-- 2020;11;19
-- Programação funcional 
-- Avalhação 2 
-- Leonardo Chaves Duarte
-- execução das funções na main

-- Exercicio 1
ex1 n = do
    [((-1)**k) * (2**(k-1))/(2*3**(k-1))| k <-[1..n]]



-- Exercicio 2 a
ex2a n | n == 0 = 0 | otherwise = ex2a(n - 1)+(((-1) * ((-2) ** (n-1)))/(2*3**(n-1)))


-- Exercicio 2 b
ex2b n = ex2Tail n 0
ex2Tail 0 b = b
ex2Tail a b = ex2Tail (a - 1) (b + (((- 2 / 3)^(a - 1)) * (- 1 / 2)))


-- Exercicio 3
type Veiculo  = (String, Integer, String)
brand_v :: Veiculo -> String
brand_v (x, _, _) = x
year :: Veiculo -> Integer
year (_, x, _) = x
tip :: Veiculo ->String 
tip (_, _, x) = x

db = []

v1 = ("Audi", 2020, "Passeio")
v2 = ("Lexus", 2019, "Passeio")
v3 = ("Man", 2011, "Caminhão")
v4 = ("Volvo", 2015, "Onibus")
v5 = ("Marcopolo", 2002, "Onibus")
v6 = ("Ferrari", 1997, "Passeio")
v7 = ("Fiat", 2019, "Passeio")
v8 = ("Mercedes", 2012, "Passeio")
v9 = ("Chevrolet", 1998, "Utilitario")
v10 = ("Dodge", 2014, "Utilitario") 

db1 = v1 : db
db2 = v2 : db1
db3 = v3 : db2
db4 = v4 : db3
db5 = v5 : db4
db6 = v6 : db5
db7 = v7 : db6
db8 = v8 : db7
db9 = v9 : db8
db10 = v10 : db9


-- Exercicio 4 esta na main 

main = do
    -- Exercicio 1
    print("Ex1 : ", ex1 4);
    -- [-0.5,0.3333333333333333,-0.2222222222222222,0.14814814814814814]

    -- Exercicio 2
    print("Ex2 a:", ex2a 4.0)
    -- -0.24074074074074076

    -- Exercicio 2b
    print("Ex2 b:", ex2b 4)
    -- -0.24074074074074076
    
    -- Exercicio 3
    print("Ex3 esta antes da main")

    -- Exercicio 4
    print("Ex3 esta comentado")
    -- map year database
    -- map tip database
    -- map brand database

-- fim