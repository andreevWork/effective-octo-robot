module Stepic.Lists where


-- 3.1 Функции для работы со списками. 10 задание
-- https://stepik.org/lesson/8326/step/10?unit=1474
isPalindrome :: Eq a => [a] -> Bool

isPalindrome [_] = True
isPalindrome [] = True
isPalindrome xs
    | head xs == last xs = isPalindrome $ init . tail $ xs
    | otherwise = False