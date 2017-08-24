module Main where

import qualified Data.Vector as V
import TensorFlow.Core
import TensorFlow.Ops
import qualified Mylib as L

testTF :: Session (V.Vector Double)
testTF = do
  let node1 = vector [3, 4, 6]
  let node2 = vector [1, 1, 2]
  let node3 = node1 + node2
  let node4 = 3 * node3
  run node4

main :: IO ()
main = do
  v <- runSession testTF
  print $ V.toList v
  L.helloHaskell

