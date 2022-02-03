#!/usr/bin/julia
#=
 - Author: Krzysztof Tałałaj
=#

using Printf
using ChangePrecision

@changeprecision Float64 begin
    current = 1.0
    while  current*(1/current) == 1  global current = nextfloat(current)  end
    println(current, " * 1 / ", current, " = ", current*(1/current), " != 0")
end