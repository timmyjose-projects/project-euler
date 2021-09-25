module Main where

myhcf :: Integer -> Integer -> Integer
myhcf a 0 = a
myhcf a b = myhcf b (a `mod` b)

mylcm :: Integer -> Integer -> Integer
mylcm a b = a * b `div` myhcf a b

solve :: [Integer] -> Integer
solve (x : y : []) = mylcm x y
solve (x : xs) = mylcm x (solve xs)

main :: IO ()
main = putStrLn $ show (solve [1..20])
