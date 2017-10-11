module Stepic.Lists where

import Data.List


-- 3.1 Функции для работы со списками
-- https://stepik.org/lesson/8326/step/10?unit=1474
isPalindrome :: Eq a => [a] -> Bool

isPalindrome [_] = True
isPalindrome [] = True
isPalindrome xs
    | head xs == last xs = isPalindrome $ init . tail $ xs
    | otherwise = False

-- https://stepik.org/lesson/8326/step/12?unit=1474
sum3 :: Num a => [a] -> [a] -> [a] -> [a]

sum3 a b c = map sum $ transpose [a, b, c]

-- https://stepik.org/lesson/8326/step/13?unit=1474
groupElems :: Eq a => [a] -> [[a]]

groupElems [] = []
groupElems xs@(x:_) = f : groupElems s
    where
        (f, s) =  span (== x) xs