-- Point example
type Point = (Float, Float)

origin :: Point
origin = (0,0)

moveVertical :: Point -> Float -> Point
moveVertical (x, y) dy = (x, y + dy)
-- moveVertical point dy = (fst point, snd point + dy)

moveVertical' :: Point -> Float -> Point
moveVertical' point dy = (fst point, snd point + dy)

moveHorizontal :: Point -> Float -> Point
moveHorizontal (x, y) dx = (x + dx, y)

moveHorizontal' :: Point -> Float -> Point
moveHorizontal' point dx = (fst point + dx, snd point)

squareTwo :: Float -> Float -> Float
squareTwo a b = a*a + b*b

calculateDistance :: Point -> Float
calculateDistance point = sqrt (squareTwo (fst point) (snd point)) - fst origin

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
