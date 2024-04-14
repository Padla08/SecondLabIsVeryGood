import Data.Map (Map, fromList, (!))

romanToInt :: String -> Int
romanToInt s = romanToInt' (fromList [('I', 1), ('V', 5), ('X', 10), ('L', 50), ('C', 100), ('D', 500), ('M', 1000),('i', 1), ('v', 5), ('x', 10), ('L', 50), ('c', 100), ('d', 500), ('m', 1000)]) s 0 0

romanToInt' :: Map Char Int -> String -> Int -> Int -> Int
romanToInt' _ [] result _ = result
romanToInt' romanValues (x:xs) result prevValue =
    let currentValue = romanValues ! x
    in if currentValue < prevValue
        then romanToInt' romanValues xs (result - currentValue) currentValue
        else romanToInt' romanValues xs (result + currentValue) currentValue

main :: IO ()
main = do
    putStrLn "Enter a Roman numeral:"
    romanNumber <- getLine
    let arabicNumber = romanToInt romanNumber
    putStrLn $ "The equivalent Arabic numeral is: " ++ show arabicNumber