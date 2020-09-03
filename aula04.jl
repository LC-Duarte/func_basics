#Leonardo Chaves Duartei

#recursivo 
function fibonacci_R(n)
    if n < 1 
        return BigInt(0)
    elseif n < 2
        return BigInt(1)
    else    
        return BigInt(fibonacci_R(n-1) + fibonacci_R(n-2))
    end
end
"""----"""
# Recursividade de calda (a)
function fibonacci_C(n)
    fib_wrapper(n, 0, 1)
end
# Recursividade de calda (ab)
function fib_wrapper(n, i, i2)
    if n < 1 
        return BigInt(0)
    elseif n < 2  
        return BigInt(i+i2)
    else
        return BigInt(fib_wrapper(n-1, i+i2, i))
    end    
end
"""----"""

#Iterativo
function fibonacci_I(n)
    if n < 1
        return BigInt(0)
    elseif n < 2
        return BigInt(1);     
    end
    fib = 1
    prevfib =0
    for i = 2:n
        temp = BigInt(fib)
        fib += BigInt(prevfib)
        prevfib = BigInt(temp)
    end
    return BigInt(fib)
end

val = 6
println("Fibo_R(", val, ") = ",fibonacci_R(val))
println("Fibo_C(", val, ") = ",fibonacci_C(val))
println("Fibo_I(", val, ") = ",fibonacci_I(val))