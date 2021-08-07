using Plots
using Zygote
using LaTeXStrings


vecindario(;x₀, ϵ=2.0, Δ=0.05) = x₀ - ϵ:Δ:x₀ + ϵ

f(x) = sin(5x) - cos(3x)

x₀ = 10
x = vecindario(x₀=x₀);

f₁ = f'(x₀)
f₂ = f''(x₀)

y = f.(x);
y = hcat(y, ones(length(y)) .* f(x₀))
y = hcat(y, @. y[:, end] + (x - x₀) * f₁)
y = hcat(y, @. y[:, end] + (x - x₀)^2 * f₂)

gr(size=(800, 800))
p = plot(x, y[:,1], label=L"f(x)")
plot!(p, x, y[:,2], label="Orden cero")
plot!(p, x, y[:,3], label="Primer orden")
plot!(p, x, y[:,4], label="Segundo orden")
plot!(p, [x₀], [f(x₀)], mark=:cirle, label=L"x_0")
title!("Aproximación por series de Taylor")
xlabel!(p, L"x")
ylabel!(p, L"f(x)")
xlims!(p, (x[1], x[end]))

savefig(p, "Taylor_borrar.png")