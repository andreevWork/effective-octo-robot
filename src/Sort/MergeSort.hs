module Sort.MergeSort ( sortV ) where

import Data.List.Utils (merge)

sortV :: Ord a => [a] -> [a]

sortV [] = []
sortV (x:[]) = [x]
sortV (x:y:[]) = merge [x] [y]
sortV list = uncurry merge $ mapPair sortV $ splitAt middle list
    where
        middle = length list `div` 2

mapPair :: (a -> b) -> (a, a) -> (b, b)
mapPair f (x, y) = (,) (f x) (f y)