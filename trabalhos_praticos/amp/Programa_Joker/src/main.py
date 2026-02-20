import csv
import random
from pathlib import Path

from textual.app import App, ComposeResult
from textual.containers import Container, Grid
from textual.css.query import NoMatches
from textual.screen import Screen
from textual.widgets import Button, Footer, Header, Input, Label

# --- Constants ---
SCRIPT_PATH = Path(__file__).parent
QUESTIONS_FILE = SCRIPT_PATH / "perguntas.csv"
LEADERBOARD_FILE = SCRIPT_PATH / "leaderboard.csv"
INITIAL_JOKERS = 7
QUESTIONS_PER_LEVEL = 5


class NameInputScreen(Screen):
    """Screen to get the player's name."""

    def compose(self) -> ComposeResult:
        yield Container(
            Label("Insira o seu nome:", id="name-label"),
            Input(placeholder="Nome de Jogador", id="name-input"),
            Button("Iniciar Jogo", id="start-game", variant="primary"),
            id="name-container",
        )

    def on_mount(self) -> None:
        """Focus the input widget when the screen is mounted."""
        self.query_one(Input).focus()

    def on_button_pressed(self, event: Button.Pressed) -> None:
        """Handle the start game button press."""
        if event.button.id == "start-game":
            player_name = self.query_one(Input).value.strip()
            if player_name:
                self.app.pop_screen()
                self.app.push_screen(GameScreen(player_name=player_name))
            else:
                self.notify(
                    "Por favor, insira um nome.",
                    severity="error",
                    title="Nome Inválido",
                )


class MenuScreen(Screen):
    """The main menu screen."""

    def compose(self) -> ComposeResult:
        yield Container(
            Label("🃏 JOKER 🃏", id="title"),
            Button("Jogar", id="play", variant="primary"),
            Button("Leaderboard", id="leaderboard", variant="default"),
            Button("Sair", id="quit", variant="error"),
            id="menu-container",
        )

    def on_button_pressed(self, event: Button.Pressed) -> None:
        if event.button.id == "play":
            self.app.push_screen(NameInputScreen())
        elif event.button.id == "leaderboard":
            self.app.push_screen(LeaderboardScreen())
        elif event.button.id == "quit":
            self.app.exit()


class LeaderboardScreen(Screen):
    """The leaderboard screen to display high scores."""

    def compose(self) -> ComposeResult:
        self.id = "leaderboard-screen"
        yield Header()
        yield Label("🏆 Leaderboard 🏆", id="leaderboard-title")

        with Container(id="scores-container"):
            scores = self.load_scores()
            if not scores:
                yield Label("Ainda não há pontuações guardadas.")
            else:
                scores.sort(key=lambda x: int(x[1]), reverse=True)
                for i, (name, score) in enumerate(scores[:10]):  # Show top 10
                    yield Label(f"{i + 1}. {name}: {score} pontos")

        yield Button("Voltar ao Menu", id="back_to_menu", variant="primary")

    def load_scores(self) -> list:
        """Loads scores from the leaderboard file, skipping the header."""
        if not LEADERBOARD_FILE.exists():
            return []
        try:
            with open(LEADERBOARD_FILE, "r", encoding="utf-8") as file:
                reader = csv.reader(file)
                next(reader, None)  # Skip header row
                return [row for row in reader if len(row) == 2 and row[1].isdigit()]
        except (IOError, csv.Error):
            return []

    def on_button_pressed(self, event: Button.Pressed) -> None:
        if event.button.id == "back_to_menu":
            self.app.pop_screen()


class GameScreen(Screen):
    """The main game screen where questions are answered."""

    def __init__(self, player_name: str):
        super().__init__()
        self.player_name = player_name
        self.level = 1
        self.score = 0
        self.jokers = INITIAL_JOKERS
        self.questions = self._load_questions()
        self.current_question_index = 0
        self.current_question_data = None
        self.timer = None
        self.time_left = 0

    def _load_questions(self) -> list:
        """Loads questions for the current difficulty level from the CSV file."""
        all_level_questions = []
        try:
            with open(QUESTIONS_FILE, "r", encoding="utf-8") as file:
                reader = list(csv.reader(file))
                for q in reader[1:]:  # 1 para dar skip ao he
                    if len(q) == 5 and int(q[4]) == self.level:
                        all_level_questions.append(q)
        except (IOError, ValueError, IndexError):
            return []

        return random.sample(
            all_level_questions, min(len(all_level_questions), QUESTIONS_PER_LEVEL)
        )

    def compose(self) -> ComposeResult:
        """Compose the game screen UI."""
        if not self.questions:
            yield Label("Não foram encontradas perguntas para este nível.")
            yield Button("Voltar", id="back_to_menu")
            return

        self.current_question_data = self.questions[self.current_question_index]
        question_text = self.current_question_data[1]
        answers = self.current_question_data[3].split(";")

        yield Header(show_clock=False)
        yield Label("", id="stats")
        yield Container(
            Label(question_text, id="question-text"), id="question-container"
        )
        with Grid(id="answers-grid"):
            for i, answer in enumerate(answers):
                yield Button(answer, id=f"answer-{i}", variant="primary")
        yield Container(
            Button("Usar Joker", id="use-joker", disabled=self.jokers <= 0),
            id="joker-container",
        )
        yield Footer()

    def on_mount(self) -> None:
        """Called after the screen is mounted. Safe to query widgets here."""
        self._setup_timer()
        try:
            self.query_one("#stats", Label).update(
                f"Score: {self.score} | Jokers: {self.jokers} | Tempo: {self.time_left}"
            )
        except NoMatches:
            pass  # Failsafe if screen is exited quickly

    def _setup_timer(self):
        """Sets the countdown timer based on the current level."""
        if self.timer is not None:
            self.timer.stop()
        if 1 <= self.level <= 5:
            self.time_left = 30
        elif 6 <= self.level <= 10:
            self.time_left = 40
        else:
            self.time_left = 50
        self.timer = self.set_interval(1, self.update_countdown)

    async def update_countdown(self):
        """Callback to update the timer every second."""
        self.time_left -= 1
        try:
            stats_label = self.query_one("#stats", Label)
            stats_label.update(
                f"Score: {self.score} | Jokers: {self.jokers} | Tempo: {self.time_left}"
            )
        except NoMatches:
            if self.timer is not None:
                self.timer.stop()
            return

        if self.time_left <= 0:
            if self.timer is not None:
                self.timer.stop()
            self.notify("O tempo esgotou!", title="Timeout", severity="error")
            await self._handle_answer("-1")

    async def _handle_answer(self, pressed_id_str: str):
        """Processes the user's answer, updates state, and moves to the next question."""
        if self.timer is not None:
            self.timer.stop()
        correct_id = int(self.current_question_data[2])
        if int(pressed_id_str) == correct_id:
            self.score += 100 * self.level
            self.notify("Resposta Correta!", title="Sucesso", severity="information")
        else:
            self.jokers -= 1
            self.notify("Resposta Incorreta!", title="Erro", severity="error")
            if self.jokers <= 0:
                self._end_game()
                return
        await self._next_question()

    async def _next_question(self):
        """Moves to the next question or ends the game/level."""
        self.current_question_index += 1
        if self.current_question_index < len(self.questions):
            await self.recompose()
        else:
            self.notify(f"Nível {self.level} completo! Passando ao próximo nível.")
            self.level += 1
            self.questions = self._load_questions()
            if not self.questions:
                self.notify("Não há mais perguntas. Fim de jogo!")
                self._end_game()
            else:
                self.current_question_index = 0
                await self.recompose()

    def _end_game(self):
        """Ends the game, saves the score, and shows the leaderboard."""
        self.notify(f"Fim de Jogo! Score final: {self.score}", title="Fim de Jogo")
        self._save_score()
        self.app.pop_screen()
        self.app.push_screen(LeaderboardScreen())

    def _save_score(self):
        """Saves the player's score, creating the file and header if needed."""
        file_exists = LEADERBOARD_FILE.is_file()
        try:
            with open(LEADERBOARD_FILE, "a", newline="", encoding="utf-8") as file:
                writer = csv.writer(file)
                if not file_exists or file.tell() == 0:
                    writer.writerow(["nome", "score"])
                writer.writerow([self.player_name, self.score])
        except IOError:
            self.notify("Erro ao guardar a pontuação.", severity="error")

    def _use_joker(self):
        """Uses a joker to eliminate one wrong answer and add time."""
        if self.jokers <= 0:
            return
        self.jokers -= 1
        self.time_left += 15
        self.notify("Joker usado! Uma resposta errada removida e +15s.", title="Joker")
        correct_id = int(self.current_question_data[2])
        all_answer_buttons = self.query("#answers-grid > Button")
        incorrect_buttons = [
            b
            for b in all_answer_buttons
            if b.id and int(b.id.split("-")[1]) != correct_id and b.visible
        ]
        if incorrect_buttons:
            random.choice(incorrect_buttons).visible = False
        self.query_one("#stats", Label).update(
            f"Score: {self.score} | Jokers: {self.jokers} | Tempo: {self.time_left}"
        )
        if self.jokers <= 0:
            self.query_one("#use-joker").disabled = True

    async def on_button_pressed(self, event: Button.Pressed) -> None:
        if event.button.id and event.button.id.startswith("answer-"):
            await self._handle_answer(event.button.id.split("-")[1])
        elif event.button.id == "use-joker":
            self._use_joker()
        elif event.button.id == "back_to_menu":
            self.app.pop_screen()


class JokerApp(App):
    """The main Textual application for the Joker game."""

    CSS_PATH = "style.css"

    def on_mount(self) -> None:
        """Called when the app is mounted."""
        self.push_screen(MenuScreen())


if __name__ == "__main__":
    app = JokerApp()
    app.run()
