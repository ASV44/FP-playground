module Main where

import Lib

parseInput :: String -> [Int]
parseInput input = map read $ words input

filterInput :: [Int] -> [Int]
filterInput = filter (\number -> number > 0 && number < 100)

main :: IO ()
main = do
  putStrLn "Input list elements:"
  input <- getLine
  print $ filterInput $ parseInput input