# Cómo correr TensorFlow en Julia

Aurélien Geron [tuiteó](https://twitter.com/aureliengeron/status/1277751121440698368/photo/1) un ejemplo usando TensorFlow en 100% Julia:

![example](./img/aurelien.png)

Antes de poder hacer eso, necesitamos agregar `PyCall` y `Conda` a nuestro ambiente de Julia. Al momento de escribir esto, cuando uno agrega `PyCall` a Julia instala miniconda con Python 3.9. Sin embargo, TensorFlow corre con Python 3.8. Así que primero necesitamos instalar Python 3.7 y después ya podemos agregar `tensorflow` desde el canal de `intel` ya que hay un [problema](https://github.com/tensorflow/tensorflow/issues/24172?s=08) con cuántos núcleos de CPU usa TensorFlow.

```julia
julia> ]
pkg> add PyCall Conda
julia> import Conda
julia> Conda.add("python=3.8")  # Para que Tensorflow sea compatible
julia> Conda.add("tensorflow", channel="intel")  # Para que tensorflow utilice todos los CPU
```

**NOTA:** PyCall [NO soporta](https://github.com/JuliaPy/Conda.jl) el uso de ambientes de Conda y por eso instalamos en el ambiente raíz.

**NOTA 2:** Se necesita *rebuild* PyCall.jl ya que cambiamos la versión de Python.

```julia
julia> ]
pkg> build PyCall
```