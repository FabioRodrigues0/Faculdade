x = 100

def f1(x):
    global y
    y = 500
    print(x)

def f2(x):
    print(x)

def main():
    f1(10)
    f2(50)
    print(x)
    print(y)

if __name__ == "__main__":
    main()
