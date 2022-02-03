#!/usr/bin/julia
#=
 - Author: Krzysztof Tałałaj
=#

using Printf
using ChangePrecision

f(x) = sqrt(x^2+1)-1
g(x) = (x^2)/(sqrt(x^2+1)+1)

@changeprecision Float64 begin
    for x in -1:-1:-180
        println("\nx= ", x)
        x = 8.0^x
        println(" f(x)= ", f(x))
        println(" g(x)= ", g(x))
    end
end
