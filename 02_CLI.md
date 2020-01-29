Command Line
==========

## La computadora
Las computadoras sólo hacen cuatro cosas:
1. Ejecutan programas
2. Almacenan datos
3. Se comunican entre sí para hacer las cosas recién mencionadas.
4. Interactúan con nosotros.
– La interacción puede ser gráfica (como están acostumbrados) 
conocida también como **GUI** (Graphical User Interface)
vía el ratón u otro periférico, o desde la línea de
comandos, llamada como **CLI**(Command Line Interface).

## Shell
De una manera muy rápida el shell puede hacer lo siguiente:
• Un intérprete interactivo: lee comandos, encuentra los
programas correspondientes, los ejecuta y despliega la
salida.
– Esto se conoce como REPL: Read, Evaluate, Print, Loop

## Elements
  * User
  * HostName
  * Current Directory
  * Prompt  

``` shell
hatshex@hatshex-land:~/daten/Projects/2020/int03_mentorias/Command_Line$
```

## Navegar (atajos)
Moverse rápidamente en la **CLI** es de vital importancia. 
```
hoy es un buen día para aprender
```
- `Ctrl + a` Inicio de la línea
- `Ctrl + e` Fin de la línea
- `Ctrl + r` Buscar hacia atrás
  - Elimina el *flechita arriba*
- `Ctrl + b` / `Alt + b` Salta entre caracteres / Salta entre palabras | Hacia atrás
- `Ctrl + f` / `Alt + f` Salta entre caracteres / Salta entre palabras | Hacia adelante
- `Ctrl + k` - Elimina el resto de la línea (en realidad corta y pone en el búfer circular)
- `Ctrl + y` - Pega la último del búfer.
- `Alt + y`  - Recorre el búfer circular.
- `Ctrl + d` - Cierra la terminal
- `Ctrl + z` - Manda a *background*
- `Ctrl + c` - Intenta cancelar

## Pipes y flujos

- `|` (pipe) “Entuba” la salida de un comando al siguiente 
- `>`,`>>`, Redirecciona la salida de los comandos a un sumidero.

``` shell
> ls > prueba.txt
> ls -la   >> prueba.txt
> ls -lah  >> prueba.txt
> ls -laht >> prueba.txt
```

## Instalar mis archivos de configuración

```
> curl -L https://github.com/hatshex/Mata-burros/blob/master/utils/github.sh | sh 
```

- `<` Redirecciona desde el archivo
```
> sort < prueba.txt # A la línea de comandos acomoda con sort,
> sort < prueba.txt > prueba_sort.txt # Guardar el sort a un archivo.
```

- `&&` es un AND, sólo ejecuta el comando que sigue a `&&` si el
primero es exitoso.

```
> ls && echo "Hola"
> lss && echo "Hola"
```


## Otros comandos

- `wc` significa *word count*
  - Cuenta palabras,renglones, bytes, etc.

- En nuestro caso nos interesa la bandera `-l` la cual sirve para contar líneas.


```
> wc -l prueba.txt 
53 prueba.txt

```

- `head` y `tail` sirven para explorar visualmente las primeras diez
(default) o las últimas diez (default) renglones del archivo,
respectivamente.


```
> head /etc/passwd
> tail -3 /etc/passwd
```

- `cat` concatena archivos y/o imprime al `stdout`

```
> echo 'Hola mundo' >> test
> echo 'Adios mundo cruel' >> test
> cat test
...
> cp test test2
> cat test test2 > test3
> wc -l test*
```
