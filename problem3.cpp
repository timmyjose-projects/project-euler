#include <cmath>
#include <iostream>

bool is_prime(unsigned long n) {
  unsigned long i = 2;
  while (i * i < n) {
    if (n % i == 0) {
      return false;
    }
    i++;
  }
  return true;
}

unsigned long solve(unsigned long n) {
  unsigned long p = 2;
  while (true) {
    int c = 0;
    while (n > 1 && n % p == 0) {
      c++;
      n /= p;
    }

    if (n == 1) {
      return p;
    }

    do {
      p++;
    } while (!is_prime(p));
  }
}

int main() {
  std::cout << solve(600851475143) << std::endl;
  return 0;
}
