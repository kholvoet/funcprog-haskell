module MainLib where


-- The purpose of a definition is to introduce a binding associating associating
-- given name with a given defintion.

-- A set of bindings is call an environment or context.

-- At any stage a programmer can return to the scropt in order to add or midfy definitions.

square :: Float -> Float
square x = x * x

smaller :: (Integer, Integer) -> Integer
smaller(x, y) = if x < y then x else y

delta :: (Float, Float, Float) -> Float
delta(a, b, c) = sqrt( square b - 4 * a * c)

quad :: Float -> Float
quad x = square( square x)

greater :: (Integer, Integer) -> Integer
greater(x, y) = if x > y then x else y

approxPi = 22 / 7

areaCircle :: Float -> Float
areaCircle r = approxPi * square r
