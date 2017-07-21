type Point = (Float, Float)

origin :: Point
origin = (0,0)

moveVertical :: Point -> Float -> Point
moveVertical (x, y) dy = (x, y + dy)

moveHorizontal :: Point -> Float -> Point
moveHorizontal (x, y) dx = (x + dx, y)

squareTwo :: Float -> Float -> Float
squareTwo a b = a*a + b*b

calculateDistance :: Point -> Float
calculateDistance (x, y) = sqrt (squareTwo x y) - fst origin
