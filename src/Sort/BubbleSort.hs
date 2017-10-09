module Sort.BubbleSort ( sortV ) where

import Data.List (delete)

sortV :: Ord a => [a] -> [a]

sortV [] = []
sortV [x] = [x]
sortV list = min : sortV (delete min list)
    where
        min = minimum list
