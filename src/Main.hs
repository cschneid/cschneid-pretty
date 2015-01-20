module Main where

import Cschneid.Pretty

main :: IO ()
main = do
  putStrLn "Show:"
  putStrLn "======="
  putStrLn renderShowTree

  putStrLn ""

  putStrLn "Pretty:"
  putStrLn "======="
  putStrLn renderPrettyTree

