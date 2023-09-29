--Ejercicio 1

minimo :: Int -> Int -> Int
minimo a b
    | a > b  = b
    | a < b  = a
    | a == b = a

maximo :: Int -> Int -> Int
maximo a b
    | a > b  = a
    | a < b  = b
    | a == b = b

minim :: [Int] -> Int
minim [] = 0
minim [x] = x
minim (x: xs) = minimo x (minim xs)

maxim :: [Int] -> Int
maxim [] = 0
maxim [x] = x
maxim (x: xs) = maximo x (maxim xs)

minMax :: [Int] -> (Int, Int)
minMax [] = (0, 0)
minMax (a) = (minim (a), maxim (a))


--Ejercicio 2
remInterv :: Int -> Int -> [Int] -> [Int]
remInterv a b [] = []
remInterv a b (x: xs)
    | a <= 0 && b >= 0 = (remInterv (a - 1) (b - 1) (xs))
    | a > 0 || b < 0 = x: (remInterv (a - 1) (b - 1) (xs))

--Ejercicio 3
intToDouble :: Int -> Double
intToDouble a = fromIntegral a

suma :: [Int] -> Double
suma [] = intToDouble 0
suma (x: xs) = intToDouble x + (suma xs)

aumentar :: Int -> Int
aumentar a = a + 1

avg :: [Int] -> Double
avg [] = 0
avg (x: xs) = (suma (x: xs) / intToDouble (aumentar (length (xs))))

-- Ejercicio 4
listToTuple :: [(a,b)] -> ([a], [b])
listToTuple xs = (map fst xs, map snd xs)

separa :: [(a,b)] -> ([a], [b])
separa xs = unzip xs

--Ejercicio 5
valorLados :: (Double, Double) -> (Double, Double) -> Double
valorLados (a, b) (c, d) = sqrt ((a - c) ** 2 + (b - d) ** 2)

restaDatos :: Double -> Double -> Double -> Double -> Double
restaDatos p a b c = p * (p - a) * (p - b) * (p - c)

areaTri :: (Double, Double) -> (Double, Double) -> (Double, Double) ->  Double
areaTri (a, b) (c, d) (e, f) = sqrt (restaDatos ((valorLados (a, b) (c, d) + valorLados (a, b) (e, f) + valorLados (e, f) (c, d)) / 2) (valorLados (a, b) (e, f)) (valorLados (a, b) (c, d)) (valorLados (e, f) (c, d)))

--Ejercicio 6
sumaElementos :: Int -> Int
sumaElementos 0 = 0
sumaElementos a = a + sumaElementos (a - 1)

sumasNaturales :: Int -> [Int]
sumasNaturales 0 = [0]
sumasNaturales a = sumasNaturales (a - 1) ++ [sumaElementos (a)]

--Ejercicio 7
esPar :: Int -> Bool
esPar a 
    | a `mod` 2 == 0 = True
    | otherwise = False

--Ejercicio 8
ackermann :: Int -> Int -> Int
ackermann a b
    | a == 0 = b + 1
    | a > 0 && b == 0 = ackermann (a - 1) 1
    | a > 0 && b > 0 = ackermann (a - 1) (ackermann a (b - 1))

--Ejercicio 9
repite :: [a] -> [a]
repite [] = []
repite (x: xs) = x: x: repite (xs)

--Ejercicio 10
--elemento :: Eq a => a -> [a] -> Bool 

--Ejercicio 11
generaLista :: Int -> [Int]
generaLista 1 = []
generaLista a = a: generaLista (a - 1)

esPrim :: Int -> [Int] -> Bool
esPrim a [] = True 
esPrim a (x: xs) = mod a x /= 0 && esPrim a xs

primos :: Int -> [Int]
primos a = [ x | x <- [2..a], esPrim x (generaLista (x - 1))]