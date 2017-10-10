module Search.BinarySearch ( searchV ) where

searchV :: Ord a => [a] -> a -> Maybe Int

searchV [] _ = Nothing
searchV list el = searchV' 0 (length list - 1)
    where
        searchV' low high
            | low > high = Nothing
            | el == middleEl = Just middleIndex
            | el < middleEl = searchV' low (middleIndex - 1)
            | el > middleEl = searchV' (middleIndex + 1) high

            where middleIndex = low + (high - low) `div` 2
                  middleEl = list !! middleIndex
