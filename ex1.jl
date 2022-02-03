#!/usr/bin/julia
#=
 - Author: Krzysztof Tałałaj
=#

using Printf
using ChangePrecision

function calculateMacheps(type)
    macheps::type = 1
    while  macheps / 2 + 1 > 1  macheps /= 2  end
    return macheps
end

function calculateEta(type)
    eta::type = 1
    while  eta / 2 > 0  eta /= 2  end
    return eta
end

function calculateMAX(type)
    max::type = 1
    while  !isinf(max * 2)  max *= 2  end
    return max * (type(2.0) - eps(type))
end

types = [Float16, Float32, Float64]
for type in types
    @changeprecision type begin
        println("\n", type, " :")
        println(" macheps= ", calculateMacheps(type), "\teps= ", eps(type))
        println(" eta= ", calculateEta(type), "\tnext= ", nextfloat(type(0.0)))
        println(" min= ", floatmin(type))
        println(" calculatedMAX=", calculateMAX(type), "\tmax= ", floatmax(type))
    end
end