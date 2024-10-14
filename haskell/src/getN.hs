-- This program accepts an integer n and a list and returns the first n elements from the list

getN _ [] = []
getN n lst = get n 1 lst

get _ _ [] = []
get n c (a : xs)
 | c <= n = a : get n (c + 1) xs
 | otherwise = []
