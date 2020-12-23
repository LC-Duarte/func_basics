#2.A
function f_imperativa(n)
    r::Real = 0
    for i in 1:n
        r += i/(i+1)
    end    
    return r    
end

#2.B
function f_recursiva(n)
    if n > 1 
        return (n)/(n+1)+f_recursiva(n-1)
    else
        return 1/2
    end
end

#2.C 
function f_calda_caller(n)
    return f_calda(n, 0)
end
function f_calda(n, atual)
    if n == 0 
        return atual
    end
    return f_calda( n-1, atual+(n/(n+1)))
end
a = f_imperativa(3)
b =  f_recursiva(5)
c = f_calda(3,0)



fz(f, n) = n == 0 ?  0 : n+f(n-1)
Z(f) = n -> f(Z(f), n)
println("Z= ", Z(fz)(3))


U(n) = n == 0 ? 0 : n+U(n-1)
println("U= ", U(3))




# Define a strict Y combinator function.
Y = (f) -> ((x)->(f((y)->((x(x))(y)))))(
  (x)->(f((y)->((x(x))(y))))
)

# Use the Y combinator the implement a factorial function.
basefunc = (f) -> ((n)->(n==0 ? 0 : n+f(n-1)))
y = Y(basefunc)
println("Y= ", y(3))
