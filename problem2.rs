// Find the sum of even-valued terms of the Fibonacci sequence (starting from 1, 2)
// such that the Fibonacci term itself does not exceed four million.
fn solve(mut a: u32, mut b: u32, max: u32) -> u32 {
    let mut res = 0;
    let mut c = b;
    while c < max {
        if c % 2 == 0 {
            res += c;
        }
        c = a + b;
        a = b;
        b = c;
    }
    res
}

fn main() {
    println!("{}", solve(1, 2, 4_000_000));
}
