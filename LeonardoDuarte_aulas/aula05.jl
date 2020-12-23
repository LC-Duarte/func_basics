#Aula 05
#03/09/20
#Leonardo Chaves Duarte
#Fatorial recursivo clássico
function fat(a)
    if a > 1
       return a * fat(a-1)
    else
       return 1    
    end    
end

#f = a -> (a>1) ? a*f(a) : 1
#println("Fat(003) = ", f(3))
println("Fat(004) = ", fat(4))
println("Fat(010) = ", fat(10))
println("Fat(100) = ", fat(100))