from math import sqrt

def is_prime(n):
    for i in range(2, round(sqrt(n)) + 1):
        if n % i == 0:
            return False
    return True

def solve(n):
    c, p = 1, 2
    while c != n:
        p += 1
        if is_prime(p):
            c += 1
    return p

def main():
    print("{}".format(solve(10001)))

if __name__ == '__main__':
    main()
