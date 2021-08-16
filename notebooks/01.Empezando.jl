### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 3b47d4a0-f7fa-11eb-0798-d3633587bd07
md"# Empezando

Temas:

1. Cómo imprimir
2. Cómo asignar variables
3. Cómo comentar
4. Sintaxis para matemáticas básicas"

# ╔═╡ 5a6a11d5-651b-4c26-accf-50a2387a13c8
md"## Cómo imprimir

En Julia, comúnmente se usa `println()` para imprimir, pero `print()` también funciona. ¿Cuál es la diferencia?"

# ╔═╡ 86f39c0a-5521-4cc3-aa4e-d7a3651d8022
println("¡Hola, CORE 2021!")

# ╔═╡ 77ef2843-9190-4767-9031-040bf71b9c6b
print("¡Hola, CORE 2021!")

# ╔═╡ 8186de26-f7be-479d-9af5-6c213e0338dc
md"## Cómo asignar variables

Solo se necesita un nombre de una variable, un valor y un signo de igual.

Julia se encarga de los _tipos_ por nosotros."

# ╔═╡ 104f1b92-873b-453c-93d1-21e7c62dfcb0
mi_respuesta = 42

# ╔═╡ 4bce4673-a035-47eb-9518-3002b7815a83
typeof(mi_respuesta)

# ╔═╡ c141093f-65b7-4eec-beeb-da2de8b1c24e
mi_pi = 3.14159

# ╔═╡ bef34fa9-72ae-45a1-b53f-72dacc493044
typeof(mi_pi)

# ╔═╡ ed58ead3-b719-4bb9-a8ac-8677b9b86404
md"Después de asignar una variable, se puede reasignar un valor de un tipo diferente a esa variable sin ningún problema (porque Julia es un lenguaje dinámico), pero no en Pluto. Usa el REPL para estas líneas."

# ╔═╡ e116f6b8-7ce7-430f-9fca-8182f76496cd
md"## Cómo comentar"

# ╔═╡ ef1b1f95-237f-4122-961a-0ff25114ed37
# Se pueden dejar comentarios de una sola línea usando el signo de "gato"

# ╔═╡ 33386794-6953-4d59-9906-a69d690be41d
#=

Para comentarios multilínea,
se utiliza la secuencia " #= ... =#".

=#

# ╔═╡ cabd36ab-10c2-4d47-b7aa-eeddfb7ebf73
md"## Sintaxis para matemáticas básicas"

# ╔═╡ e7df69fc-635a-4508-8bbb-b8fd67c938c5
suma = 3 + 7

# ╔═╡ 26844704-c42a-4f7f-b129-19cc012c13fb
diferencia = 10 - 3

# ╔═╡ c618a243-9494-4963-acfe-e9393ec30f45
producto = 20 * 5

# ╔═╡ 7e652f15-a2bd-4aec-b5cc-abcc188a6b78
cociente = 100 / 10

# ╔═╡ 3dde5f23-383e-482c-a703-7ba655328c36
potencia = 10 ^2

# ╔═╡ 074a1980-5ee0-4af1-a357-38ba0ba43bed
módulo = 101 % 2

# ╔═╡ 642f5b99-fd8e-4a55-b9b1-580cba30653c
md"## Ejercicios

### 1.1

Busca la documentación para la función `convert`."

# ╔═╡ 7686b892-9cb6-44ba-9f10-20a3fa984793
md"### 1.2

Asigna `365` a una variable llamada `días`."

# ╔═╡ 52ba4bde-9043-43c4-8445-d422d073dfc6
# Escribe tu respuesta

# ╔═╡ 9ea03840-a5bf-4dfd-b6e5-3a8e2f3d8ad4
if !@isdefined días
	md"""
	!!! danger "Incorrecto"
		La variable `días` no ha sido definida.
	"""
else
	if !(días isa Int && días == 365)
		md"""
		!!! warning "Incorrecto"
			La variable ya existe, pero no le asignaste `365`. Recuerda que debe ser un número entero.
		"""
	else
		md"""
		!!! correct "Correcto"
			¡Bien hecho!
		"""
	end
end

# ╔═╡ 2108d797-5d83-43ee-9fbc-0d2ad16c5aed
md"### 1.3
Convierte `días` a un flotante y asígnala a la variable `días_flotante`."

# ╔═╡ 7d29b778-cc6b-446a-afe8-018265f49785
# Escribe tu respuesta

# ╔═╡ 91219fe7-8f18-43fd-88cf-051b97364172
if !@isdefined días_flotante
	md"""
	!!! danger "Incorrecto"
		La variable `días_flotante` no ha sido definida.
	"""
else
	if !(días_flotante isa Float64 && días_flotante == 365.0)
		md"""
		!!! warning "Ya casi"
			La variable ya existe, pero no es un número de tipo flotante o no tiene el valor solicitado.
		"""
	else
		md"""
		!!! correct "Correcto"
			¡Bien hecho!
		"""
	end
end

# ╔═╡ 77cc11b3-e1b8-477e-8e4f-cc20230f3ebd
md"""### 1.4

Observa qué sucede cuando se ejecuta lo siguiente:

```julia
convert(Int64, "1")
```
y

```julia
parse(Int64, "1")
```
"""

# ╔═╡ e3964dc0-8979-4748-8e31-bfc88a620578


# ╔═╡ 36c014a3-5558-4a75-93fc-2aefd4eb61ca


# ╔═╡ Cell order:
# ╟─3b47d4a0-f7fa-11eb-0798-d3633587bd07
# ╟─5a6a11d5-651b-4c26-accf-50a2387a13c8
# ╠═86f39c0a-5521-4cc3-aa4e-d7a3651d8022
# ╠═77ef2843-9190-4767-9031-040bf71b9c6b
# ╟─8186de26-f7be-479d-9af5-6c213e0338dc
# ╠═104f1b92-873b-453c-93d1-21e7c62dfcb0
# ╠═4bce4673-a035-47eb-9518-3002b7815a83
# ╠═c141093f-65b7-4eec-beeb-da2de8b1c24e
# ╠═bef34fa9-72ae-45a1-b53f-72dacc493044
# ╟─ed58ead3-b719-4bb9-a8ac-8677b9b86404
# ╟─e116f6b8-7ce7-430f-9fca-8182f76496cd
# ╠═ef1b1f95-237f-4122-961a-0ff25114ed37
# ╠═33386794-6953-4d59-9906-a69d690be41d
# ╟─cabd36ab-10c2-4d47-b7aa-eeddfb7ebf73
# ╠═e7df69fc-635a-4508-8bbb-b8fd67c938c5
# ╠═26844704-c42a-4f7f-b129-19cc012c13fb
# ╠═c618a243-9494-4963-acfe-e9393ec30f45
# ╠═7e652f15-a2bd-4aec-b5cc-abcc188a6b78
# ╠═3dde5f23-383e-482c-a703-7ba655328c36
# ╠═074a1980-5ee0-4af1-a357-38ba0ba43bed
# ╟─642f5b99-fd8e-4a55-b9b1-580cba30653c
# ╟─7686b892-9cb6-44ba-9f10-20a3fa984793
# ╠═52ba4bde-9043-43c4-8445-d422d073dfc6
# ╟─9ea03840-a5bf-4dfd-b6e5-3a8e2f3d8ad4
# ╟─2108d797-5d83-43ee-9fbc-0d2ad16c5aed
# ╠═7d29b778-cc6b-446a-afe8-018265f49785
# ╟─91219fe7-8f18-43fd-88cf-051b97364172
# ╟─77cc11b3-e1b8-477e-8e4f-cc20230f3ebd
# ╠═e3964dc0-8979-4748-8e31-bfc88a620578
# ╠═36c014a3-5558-4a75-93fc-2aefd4eb61ca
