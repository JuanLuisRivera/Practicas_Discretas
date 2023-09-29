--Primera parte

data EA = Num Int
  | Suma EA EA
  | Resta EA EA
  | Mult EA EA
  | Div EA EA
  | Mod EA EA
  | Pot EA EA
  --deriving Show

--Ejercicio 1
calcula :: EA -> Int
calcula (Num x) = x
calcula (Suma x y) = (calcula (x)) + (calcula (y))
calcula (Resta x y) = (calcula (x)) - (calcula (y))
calcula (Mult x y) = (calcula (x)) * (calcula (y))
calcula (Div x y) = div (calcula (x)) (calcula (y))
calcula (Mod x y) = mod (calcula (x)) (calcula (y))
calcula (Pot x y) = (calcula (x)) ^ (calcula (y))


--Ejercicio 2
compara :: EA -> EA -> Ordering
compara ea1 ea2 = compare (calcula (ea1)) (calcula (ea2))


--Ejercicio 3
instance Show EA where
  show (Num x) = "" ++ show x
  show (Suma x y) = "(" ++ show x ++ " + " ++ show y ++ ")"
  show (Resta x y) = "(" ++ show x ++ " - " ++ show y ++ ")"
  show (Mult x y) = "(" ++ show x ++ " * " ++ show y ++ ")"
  show (Div x y) = "(" ++ show x ++ " /" ++ show y ++ ")"
  show (Mod x y) = "(" ++ show x ++ " % " ++ show y ++ ")"
  show (Pot x y) = "(" ++ show x ++ " ^ " ++ show y ++ ")"

--Pruebas
--(Suma (Num 1) (Num 2))
--(Suma (Num 10) (Suma (Num 1) (Num 2)))



--Segunda parte
data BTree a = Void | Node a (BTree a) (BTree a) deriving Show

--Ejercicio 4
enOrden :: BTree a -> [a]
enOrden Void = []
enOrden (Node a x y) = enOrden x ++ [a] ++ enOrden y


--Ejercicio 5
preOrden :: BTree a -> [a]
preOrden Void = []
preOrden (Node a x y) = [a] ++ preOrden x ++ preOrden y


--Ejercicio 6
postOrden :: BTree a -> [a]
postOrden Void = []
postOrden (Node a x y) = postOrden x ++ postOrden y ++ [a]


--Ejercicio 7
espejo :: BTree a -> BTree a
espejo Void = Void
espejo (Node a x y) = Node a y x


--Ejercicio 8
size :: BTree a -> Int
size Void = 0
size (Node a x y) = 1 + size x + size y


--Ejercicio 9
inserta :: Ord a => a -> BTree a -> BTree a
inserta a Void = Node a Void Void 
inserta a (Node b x y)
  | a <= b = (Node b (inserta a x) y)
  | otherwise = (Node b x (inserta a y))


--Ejercicio 10
--generaArbol :: Ord a => [a] -> BTree a


--Pruebas
--(Node 1 Void Void)
--(Node 1 ((Node 2 Void Void)) ((Node 3 Void Void)))
--(Node 1 ((Node 2 (Node 4 Void Void) Void)) ((Node 3 (Node 5 Void Void) Void)))
--(Node 1 (Node 2 ((Node 3 ((Node 4 Void Void)) ((Node 5 Void Void)))) ((Node 6 Void Void))) Void)
--(Node 1 ((Node 2 (Node 4 Void Void) (Node 5 Void Void))) ((Node 3 (Node 6 Void Void) (Node 7 Void Void))))



--Tercera Parte

--Ejercicio 11
data KVTree a = Val Int | Raiz a (KVTree a) (KVTree a) deriving Show


--Ejercicio 12
--insertaKV :: KVTree -> KVTree -> KVTree



--Ejercicio 13
--existeKV :: Ord a => a -> KVTree -> KVTree -> Bool 
