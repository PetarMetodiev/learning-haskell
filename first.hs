double :: Int -> Int
double x = x + x

square :: Num a => a -> a
square a = a * a

squareTwo :: Int -> Int -> Int
squareTwo x y = x*x + y*y

showResult :: Show a => a -> String
showResult number = "The result is " ++ show number

showAreaOfCircle :: (Floating a, Show a) => a -> String
showAreaOfCircle r = "The area of a circle with radius " ++ show r ++ " is about " ++ show (pi * (square r)) ++ "cm^2"

getMax :: Ord a => a -> a -> a
getMax x y	| x > y = x
			| x == y = x
			| otherwise = y

isPositive :: (Ord a, Num a) => a -> Int
isPositive x 	| x < 0 = -1
				| x == 0 = 0
				| otherwise = 1

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100
						 then x
						 else x*2

myName = "I am a developer!"

myName' :: String -> String
myName' name = "I am a developer! " ++ name ++ "!"

isInArray :: Int -> Bool
isInArray num = num `elem` [1..50]

removeUpperCase str = [ch | ch <- str, ch `elem` ['a'..'z']]

factorial :: Int -> Int
factorial n = product [1..n]

addTwoNumbers :: Int -> Int -> Int
addTwoNumbers a b = a + b

multiplyTwoNumbers :: Int -> Int -> Int
multiplyTwoNumbers a b = a * b

multiplyTwoNumbers' :: Num a => a -> a -> a
multiplyTwoNumbers' a b = a * b
