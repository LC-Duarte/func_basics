#Aula 02
#13/08/20
#Leonardo Chaves Duarte
#λa.λb.a+b
#Lamba Calculus
#https://docs.julialang.org/en/v1/


println("# Aula02 - Cálculo Lambda #")
println()
# ---------------
# * 1. Funções anônimas: 
#notação comum
#λa.λb.a+b | Em julia: (a->b->a+b)
println("1 - Funções anônimas")
println((a->b->a+b)(2)(5))

println("1.1 - notações (sintaxe)")

#-> é indicador de Lamba
#a->b-> #indica que "a" é uma função lambda e "b" é uma variavel
#Primeiro par de parenteses indica a presença da função anonima.
# a = 2
# b =5
#lambda sempre é binario (função, corpo)

#também podemos escrever assim: ((a)->((b)->(a+b)))
println(((a)->((b)->(a+b)))(2)(5))

#neste caso temos duas Funções
# em "a" com corpo em "b"
# em "b" com corpo em "a+b"
#Logo a função "a" recebe um argumento e retorna a função "b" que recebe outro argumento e retorna a soma do valor dos argumentos "a" e "b".
#pode-se afirmar que a função se aplica ao valor

#1.1.1 Aplicação:
#(substituição)
#(a->b->a+b) (2)(3) |-> (a->2+b)(3)

#1.1.2 Substituição:
#Substituir variavel por parametro é chamado de redução
# (a->b->a+b) (2)(3) |--> (a->2+b)(3) |--> 2+3 |--> 5 

#Aplicação + Substituição = redução

println("--")
println("1.2 - Multiplicação")
println((x->3*x)(9))
println((x->3x)(9)) #Julia permite omitir o operador de multiplicação em alguns casos (multiplicação de váriavel por constante)
println("1.3 - Potências")
println((a->a^2)(3)) #Potecias em julia
println("--")
println("1.4 - Polinômios")
println((x->y->3x^2 +2*x*y + y^2)(2)(5)) #Polinomios escrtios em 2 lambdas (Função curied, função binaria decomposta em funções uniarias)
println(((x, y)-> 3x^2 +2*x*y + y^2)(2, 5))# Polinomios escritos em lambda polinomial (Função não curied)
#Alias (alias não é declaração de fução, ele é uma referencia para uma função anônima)
println("--")
println("1.5 - alias")
soma = a1 -> a2 -> a1+a2
println(soma(2)(3))  
println("-------------------------------")
# ---------------

# * 2. Declarações de Funções em Julia
println("2 - Declarações de funções em Julia ")

println("2.1 - declaração de funções")
function mult(p1, p2)
    p1*p2
end
#println(mult)
println(mult(2,3))

println("--")
println("2.2 - aplicação parcial")
# Aplicações parcias:
sucessor = soma(1)
#LEMBRE: Aplicações parciais definem novas funções
# A função definida por função parcial é uma especificação da função que a originou.
# Apenas funções curied podem ser especificadas através de aplicações parciais
println(sucessor(6))
println("--------")
println("Calculando distacias ")
#X = 1
#Y = 2
#Z = 2
radicando3D =((x,y,z)->((x^2)+(y^2)+(z^2))) #neste caso todas as variaveis estão ligadas (combinador)
dist = (x, y, z) -> radicando3D(x,y,z)^(1/2)
println(dist(1,2,2))
 
#print(tri(1,2,2))
println("--------")
println("nunca usar variaveis livres")
#variaveis livres (globais) não devemser usadas dentro de lambdas
#exemeplo de problemas que variaveis globais podem gerar
two = 2
sum2 = x->x+two # não combinador
println(sum2(1))
two = 3
println(sum2(1))

#em programação funcional, tudo que uma função necessita para ser executada deve ser passado por parametro.

println("----------")
println("* end *")

