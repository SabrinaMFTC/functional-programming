-- [3,1,2,1,2,3]
delRep [] = []
delRep (a : xs) | member a xs lst == [] = delRep xs | otherwise = a : lst

member _ [] lst = []
member n (a : xs) lst | n == a = lst ++ [n] | otherwise = member n xs lst