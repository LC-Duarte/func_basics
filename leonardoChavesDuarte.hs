-- 2020;12;10
-- Programação funcional 
-- Recuperação RA2
-- Leonardo Chaves Duarte
-- execução das funções na main


-------------------------------------------
-- Exercicio 1 
ex1 (a:x) = ex1Caud(a:x) 0
ex1Caud [] n = n
ex1Caud (a:x) n = ex1Caud x  n+1
-------------------------------------------
--Exercicio 2

-- usar map para associar inversos
invs :: ([Int]) -> ([Float])
invs xs = map inv xs
    where
    inv x = 1/(fromIntegral x)

-- usar filter para conferir se o numero é par 
numPar n = n `mod` 2 == 0
listaPares :: ([Int]) -> ([Int])
listaPares xs = filter numPar xs

-- usar fold(reduce) para somar
soma xs = foldr (+) 0 xs
ex2 n = do    
    -- filtro
    let (x:xs) = listaPares[1..n]
    -- map
    let (x:xp) = invs xs
    -- fold (reduce)
    soma xp
-------------------------------------------


-- Exercicio 3
fact x =
  factCaud x 1
  where factCaud 0 a = a
        factCaud n a = factCaud (n - 1) (n * a)
ex3 n = do
    [(k+1)/fact k | k <-[0..n]]
-------------------------------------------


-- Exercicio 4
-- De fato funções puras não geram danos colaterais pois não possuem dependecias externas em variaveis globais.
-- isso as torna mais previsiveis, ja que seus resultados são sempre os mesmos quando aplicada aos mesmos parametros, 
-- e faceis de manutenção e portabilidade.
-- Visto que são funções puras apenas transdformam valores, são chamadas transformações
-- Por não dependerem de variaveis externas, não compartilham memoria, logo são ideais para processamentos de dados em massa
-- ja que gastam pouca memoria e permitem paralelismo em massa
-- Tambem por não depederem de variaveis globais, tornam a compilação muito mais rapida pois o esforço para linkar as classes 
-- fica menor.
-- levando em consideração os fatores a cima pode-se concluir que a frase esta correta 

main = do
    -- Exercicio 1
    print("Ex1, ['a', 'b', 'c', 'd'] : ", ex1["a", "b", "c", "d"]);
    print("Ex2,  n=10 : ", ex2 10)
    print("Ex3, n=4 lista : ", ex3 4);
    print("Ex3, n=4 soma : ", sum (ex3 4) )
    
   
    


