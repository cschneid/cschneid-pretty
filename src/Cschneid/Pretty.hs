module Cschneid.Pretty where

import Text.PrettyPrint
import Text.PrettyPrint.HughesPJClass

data Tree a = Leaf a | Node (Tree a) (Tree a) deriving (Show)

instance Pretty a => Pretty (Tree a) where
  pPrint (Leaf a)   = text "Leaf: " <> pPrint a
  pPrint (Node l r) = vcat [ text "Node:"
                           , nest 2 (pPrint l)
                           , nest 2 (pPrint r)]

exampleTree :: Tree Int
exampleTree =
  Node
    (Node
      (Leaf 9)
      (Leaf 8))
    (Node
      (Leaf 2)
      (Leaf 3))

renderShowTree :: String
renderShowTree = show exampleTree

renderPrettyTree :: String
renderPrettyTree = prettyShow exampleTree
