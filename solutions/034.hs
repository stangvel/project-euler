import Data.Char (digitToInt)
import Data.List (foldl')

factorial :: Int -> Int
factorial n = product [1..n]

digitFactorialSum :: Int -> Int
digitFactorialSum n = sum $ map factorial $ map digitToInt $ show n

isCuriousNumber :: Int -> Bool
isCuriousNumber n = n == digitFactorialSum n

curiousNumbersSum :: Int
curiousNumbersSum = sum $ filter isCuriousNumber [3..999999]

main :: IO ()
main = print curiousNumbersSum
