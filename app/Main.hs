module Main where

import H99.Q23
import H99.Q24
import H99.Q25

main :: IO ()
main = do
  putStrLn "rnd_select:"
  putStrLn $ show $ rnd_select "abcdefg" 3
  putStrLn "diff_select:"
  putStrLn $ show $ diff_select 6 100
  putStrLn $ show $ diff_select' 6 100
  putStrLn "diff_permu:"
  putStrLn . show $ rnd_permu "abcdefg"
  putStrLn . show $ rnd_permu' "abcdefg"