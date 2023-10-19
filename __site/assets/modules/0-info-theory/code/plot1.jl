# This file was generated, do not modify it. # hide
using Plots
using PyPlot

y3 = @. sin(x)^2 - 1/2   # equivalent to y3 = sin.(x).^2 .- 1/2
plot!(x, y3)