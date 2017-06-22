module Main where

import           Criterion.Main
import           Criterion.Types
import           Lib

main :: IO ()
main =
  defaultMainWith benchConfig
  [
    bgroup "Project Euler Solutions"
    [ bench "Problem 1 solution" $ whnf const solution1
    , bench "Problem 2 solution (naive)" $ whnf const solution2
    , bench "Problem 2 solution" $ whnf const solution2'
    ]
  ]
  where benchConfig = defaultConfig
          { reportFile = Just "benchmark-output.html"
          , csvFile = Just "benchmark-output.csv"
          }
