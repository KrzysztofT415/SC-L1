#!/usr/bin/julia
#=
 - Author: Krzysztof Tałałaj
=#

using Printf
using ChangePrecision

@changeprecision Float64 begin
    f(x) = sin(x) + cos(3x)
    fp(x0, h) = (f(x0 + h) - f(x0)) / h
    fr(x) = cos(x) - 3 * sin(3x)

    for n in 0:54
        println("\nx= ", n)
        n = 2.0^-n
        println(" h+1= ", n+1)
        println(" f~'(x)= ", fp(1, n))
        println(" |f'(x) - f~'(x)|= ", abs(fr(1) - fp(1, n)))
    end
end
