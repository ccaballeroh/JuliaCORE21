### A Pluto.jl notebook ###
# v0.12.17

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 0d6ea8d0-3e94-11eb-356e-4bfe6eb81c55
begin
	import Zygote:gradient
	using Plots
	using LaTeXStrings
	gr()
	#plotlyjs()
	md"# Gradiente descendente"
end

# ╔═╡ 01fa0ad0-3f11-11eb-3602-cb3bd73158a8
md"Definimos una función $f_1(\textbf x)$ de $\mathbb{R}^2 \rightarrow \mathbb{R}$:"

# ╔═╡ 356d4e90-3e94-11eb-29f7-87fb1f4af3c9
function f₁(x)
	x₁, x₂ = x[1], x[2]
	return x₁^2 + x₁*x₂ + x₂^2
end

# ╔═╡ 698e2fa0-3e94-11eb-3ccb-8da05e3021dc
begin
	xx = -15:15
	yy = -15:15
	z = [[x;y] for x in xx for y in yy];
end

# ╔═╡ 376d6450-3e94-11eb-3988-1133a2fce877
function gradient_descent(f, x; αₖ=0.1, p=my_plot)	
	∇f(x) = gradient(f, x)[1];
	xₙ = x
	for i in 1:20
		xₒ = xₙ
		pₖ = -∇f(xₒ)
		xₙ = xₒ + αₖ*pₖ
		plot!(p, [xₒ[1]], [xₒ[2]], shape=:circle, color=:red)
		plot!(p, [xₒ[1], xₙ[1]], [xₒ[2], xₙ[2]], color=:green) 
	end	
	return xₙ
end

# ╔═╡ 3c7b2f40-3e94-11eb-37b3-27f3397d6fc4
begin
	md"""
	x₁ inicial = $(@bind x₁ html"<input type=range min=-20 max=20 step=0.1 >")
	x₂ inicial = $(@bind x₂ html"<input type=range min=-20 max=20 step=0.1 >")
	αₖ = $(@bind learning html"<input type=range min=1.001 max=3.2 step=0.00001 >")
	"""
end

# ╔═╡ 442af540-3e94-11eb-3908-3b3b2805bc8a
begin
	x = [x₁, x₂];
	md"""
	x = [$(x[1]), $(x[2])]

	αₖ = $(log10(learning))
	"""
end

# ╔═╡ 565adf50-3e94-11eb-27f6-4b814c09fb55
begin
 	p1 = contour(xx, yy, f₁.(z), fill=true, legend=false, c=:viridis)
	title!(p1, "Gradiente descendente")
	xlabel!(p1, L"$x_1$")
	ylabel!(p1, L"$x_2$")
	x̄ = gradient_descent(f₁, x, αₖ=log10(learning), p=p1)
	p1
end

# ╔═╡ e423e920-3e95-11eb-34bd-b7b75ace62d8
md"El punto $\textbf x$ al que llega en la última iteración es [$(x̄[1]), $(x̄[2])]"

# ╔═╡ Cell order:
# ╟─0d6ea8d0-3e94-11eb-356e-4bfe6eb81c55
# ╟─01fa0ad0-3f11-11eb-3602-cb3bd73158a8
# ╠═356d4e90-3e94-11eb-29f7-87fb1f4af3c9
# ╠═698e2fa0-3e94-11eb-3ccb-8da05e3021dc
# ╠═376d6450-3e94-11eb-3988-1133a2fce877
# ╟─3c7b2f40-3e94-11eb-37b3-27f3397d6fc4
# ╟─442af540-3e94-11eb-3908-3b3b2805bc8a
# ╟─565adf50-3e94-11eb-27f6-4b814c09fb55
# ╟─e423e920-3e95-11eb-34bd-b7b75ace62d8
