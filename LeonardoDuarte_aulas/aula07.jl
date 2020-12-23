#Aula 07
#24/09/20
#Leonardo Chaves Duarte
#Combinadores de ponto fixo

# Y combinator: Curry's paradox
#Aplicar o combinador Y F
# F é uma função qualquer

#(λf.((λx.f(x x))(λx.f(x x))))F

#1. implementando o combinador Y em julia


Y = (f->(x->f(x,x)) f->(x->f(x,x)))
