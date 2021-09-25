fn sieve(limit: usize) -> Vec<usize> {
    let mut bs = vec![true; limit + 1];
    let mut i = 2usize;
    while i <= f64::sqrt(limit as f64) as usize {
        if bs[i] {
            let mut j = i * i;
            while j <= limit {
                bs[j] = false;
                j += i;
            }
        }
        i += 1;
    }

    let mut primes = Vec::new();
    for (idx, &b) in bs.iter().enumerate().skip(2) {
        if b {
            primes.push(idx);
        }
    }

    primes
}

fn solve(limit: usize) -> usize {
    let primes = sieve(limit);
    primes.iter().fold(0, |acc, n| acc + n)
}

fn main() {
    println!("{}", solve(2_000_000));
}
