-- Point example
type Point = (Int, Int)

origin :: Point
origin = (0,0)

moveVertical :: Point -> Int -> Point
moveVertical (x, y) dy = (x, y + dy)
-- moveVertical point dy = (fst point, snd point + dy)

moveVertical' :: Point -> Int -> Point
moveVertical' point dy = (fst point, snd point + dy)

moveHorizontal :: Point -> Int -> Point
moveHorizontal (x, y) dx = (x + dx, y)

moveHorizontal' :: Point -> Int -> Point
moveHorizontal' point dx = (fst point + dx, snd point)

squareTwo :: Int -> Int -> Int
squareTwo a b = a*a + b*b

calculateDistance :: Point -> Float
calculateDistance point = sqrt (fromIntegral (squareTwo (fst point) (snd point))) - fromIntegral (fst origin)

-- Color point example
type Color = String
type ColorPoint = (Int, Int, Color)

colorOrigin :: Color -> ColorPoint
colorOrigin color = (0,0,color)

colorMove :: ColorPoint -> Int -> Int -> ColorPoint
colorMove (x,y,color) dx dy = (x + dx, y + dy, color)

colorDistance :: ColorPoint -> ColorPoint -> Float
colorDistance (x1,y1,color1) (x2,y2,color2)
  = sqrt (fromIntegral (dx * dx + dy * dy))
  where
   dx = abs x1 - x2
   dy = abs y1 - y2
