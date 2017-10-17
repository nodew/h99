module Main where

import System.IO
import Control.Monad.IO.Class

import H99.Q23
import H99.Q24

main :: IO ()
main = do
  let s = rnd_select "abcdefg" 3
  putStrLn $ show s
  let lst = diff_select 6 100
  putStrLn $ show lst
  let lst' = diff_select' 6 100
  putStrLn $ show lst'