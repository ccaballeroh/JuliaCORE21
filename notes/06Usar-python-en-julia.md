# C贸mo correr Python en Julia

[Regresar](./README.md)

---

Aur茅lien Geron [tuite贸](https://twitter.com/aureliengeron/status/1277751121440698368/photo/1) un ejemplo usando TensorFlow en 100 % Julia.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">This is 100% <a href="https://twitter.com/hashtag/JuliaLang?src=hash&amp;ref_src=twsrc%5Etfw">#JuliaLang</a> code. It trains a dense neural network using the <a href="https://twitter.com/hashtag/Keras?src=hash&amp;ref_src=twsrc%5Etfw">#Keras</a> Python library. If you replace the first 3 lines with &quot;import tensorflow as tf; from tensorflow import keras&quot;, you can run the exact same code in Python. Talk about excellent interoperability! 馃 <a href="https://t.co/Umf7zL6uAU">pic.twitter.com/Umf7zL6uAU</a></p>&mdash; Aur茅lien Geron (@aureliengeron) <a href="https://twitter.com/aureliengeron/status/1277751121440698368?ref_src=twsrc%5Etfw">June 29, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

(Agrego una impresi贸n de pantalla del c贸digo en caso de que algo suceda con el tuit.)

![example](../imgs/Aurelien.png)

## C贸mo instalar paquetes de Python

1. Antes de correr ese c贸digo, necesitamos agregar `PyCall` y `Conda` a nuestro ambiente de Julia.
 
    ```julia
    julia> ]
    (tensorflow) pkg> add PyCall Conda
    ```
    Al agregar `PyCall` a Julia, se instala miniconda con una instalaci贸n de Python (la 3.9 al momento de escribir esto).

2. Podemos agregar paquetes de Python y tambi茅n del canal que queramos. Para este ejemplo, instalamos `tensorflow` desde el canal de `intel` (hab铆a un [problema](https://github.com/tensorflow/tensorflow/issues/24172?s=08) con el n煤mero de CPU en los que corr铆a TensorFlow con el canal por defecto).

    ```julia
    julia> import Conda
    julia> Conda.add("tensorflow", channel="intel")
    ```

3. (Opcional) Si quisieras cambiar la versi贸n de Python por defecto, se puede agregar con `Conda`:

    ```julia
    julia> import Conda
    julia> Conda.add("python=3.8")
    ```
    Pero es necesario volver a construir (_build_) `PyCall`:

    ```julia
    julia> ]
    pkg> build PyCall
    ```
Ahora, ya podemos escribir un _script_ de Julia con el c贸digo de la imagen y ejecutarlo en Julia. Este procedimiento se puede realizar para cualquier paquete de Python, as铆 que vemos que es muy f谩cil seguir usando tus funcinalidades favoritas desde Julia con `Conda` y `PyCall`.

Revisa la [documentaci贸n](https://github.com/JuliaPy/PyCall.jl) de `PyCall.jl` para ver c贸mo ejecutar c贸digo de Python como cadenas de texto de Julia o usar una instalaci贸n preexistente de Python en tu equipo.

**NOTA:** PyCall [NO soporta](https://github.com/JuliaPy/Conda.jl) el uso de ambientes de Conda y por eso instalamos en el ambiente ra铆z.

---

[Regresar](./README.md)
