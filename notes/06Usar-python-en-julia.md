# Cómo correr TensorFlow en Julia

Aurélien Geron [tuiteó](https://twitter.com/aureliengeron/status/1277751121440698368/photo/1) un ejemplo usando TensorFlow en 100 % Julia:

   <iframe
            border=0
            frameborder=0
            height=450
            width=550  
            src="https%3A%2F%2Ftwitter.com%2Faureliengeron%2Fstatus%2F1277751121440698368">
</iframe>

![example](../imgs/aurelien.png)

Antes de poder hacer eso, necesitamos agregar `PyCall` y `Conda` a nuestro ambiente de Julia. Al momento de escribir estas notas, al agregar `PyCall` a Julia, se instala miniconda con Python 3.9. TensorFlow sí está probado con Python 3.9 así que no es necesario cambiar la versión de Python que instala `PyCall`. Podemos agregar `tensorflow` desde el canal de `intel` ya que hay un [problema](https://github.com/tensorflow/tensorflow/issues/24172?s=08) con cuántos núcleos de CPU usa TensorFlow.

```julia
julia> ]
pkg> add PyCall Conda
julia> import Conda
julia> Conda.add("tensorflow", channel="intel")  # Para que tensorflow utilice todos los CPU
```

Si quisieras cambiar la versión de Python por defecto, se puede agregar con `Conda`:

```julia
julia> import Conda
julia> Conda.add("python=3.8")
```
Pero es necesario volver a construir (_build_) `PyCall`:

```julia
julia> ]
pkg> build PyCall
```

**NOTA:** PyCall [NO soporta](https://github.com/JuliaPy/Conda.jl) el uso de ambientes de Conda y por eso instalamos en el ambiente raíz.

