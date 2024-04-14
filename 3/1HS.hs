import System.IO

sumDigits :: Int -> Int
sumDigits 0 = 0
sumDigits n = mod n 10 + sumDigits (div n 10)

findNumbers :: [Int] -> [Int]
findNumbers = filter (\x -> sumDigits x < 10)

main :: IO ()
main = do
    putStrLn "Enter numbers separated by space:"
    input <- getLine
    let arr = map read (words input) :: [Int]
    print $ findNumbers arr