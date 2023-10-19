# This file was generated, do not modify it. # hide
using PyPlot
figure(figsize=(8, 6))

x = range(0, 1, length=1000)
f(x) = .- x .* log2.(x) + (1 .- x) .* log2.(1 .- x)

xticks(range(0,0.5,length=5))
yticks(range(-1,0,length=5))


plot(f(x))

xlabel("Pr(x)=1")
ylabel("H(x)")
grid("on")
savefig(joinpath(@OUTPUT, "ent3.svg")) # hide