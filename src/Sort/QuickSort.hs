module Sort.QuickSort ( sortV ) where

import Data.List (partition)

sortV :: Ord a => [a] -> [a]

sortV [] = []
sortV (x:[]) = [x]
sortV (x:xs) = sortV lower ++ [x] ++ sortV bigger
    where
        (lower, bigger) = partition (< x) xs
