-- Fibonacci Sequence
-- 2024.04.01


-- | Calculates the nth Fibonacci number using recursion.
fibonacci :: Int -> Int
fibonacci n
    | n <= 1 = n
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

-- | Main function to calculate and print the first 10 Fibonacci numbers.
main :: IO ()
main = do
    let fibNumbers = take 10 [fibonacci i | i <- [1..]]
    putStrLn $ unwords $ map show fibNumbers
