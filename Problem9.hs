module Main where

solve :: Integer -> Integer
solve limit = a * b * c
  where
    (a, b, c) = head [(p, q, r) | p <- [1..limit], q <- [p..limit], r <- [p..limit], p * p + q * q == r * r, p + q + r == limit]

main :: IO ()
main = putStrLn $ show (solve 1000)
