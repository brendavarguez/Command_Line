The commmands used in this project are: cat, tail and tr.

Cat and tail commands were first used to create and pass all lines except by the first one to a new file. The first line of the original
file was delete in order to avoid duplicate rows since the fisrt line is the same for both UFO-Dic-2014.tsv and UFO-Nov-2014.tsv

Then, again cat command was implemented to create a new file where all the information from the original files was
copy. And finally, with tr command the final file was transformed from tabs to '|'.

Questions:
¿Cuántas observaciones totales? En total fueron 1025 observaciones totales y para responder esta pregunta con wc -l conté las lineas totales
del archivo y le resté uno para que no cuente la primera fila, la cual contiene los nombres de las columnas.

¿Cuál es el top 5 de estados? CA, FL, WA, AZ & PA. Para obtener esta respuesta tuve que accerder a la columna de los 
estados con un cut -f, ordernarlos y checar sus frecuencias. Después, para ordenarlos de manera ascendente se utilizó
sort -n -r y finalmente con head -5 obtuve los 5 primeros lugares.

¿Cuál es el top 5 de estados por año? Top 5 estados por año es la misma respuesta que la anterior ya que las
observaciones son de dos meses diferentes del mismo año: CA, FL, WA, AZ & PA.  

¿Cuál es el mes con más avistamientos? El mes con más avistamientos es noviembre. Para obtener esta respuesta utilicé
wc -l para contar las líneas de cada archivo por separado. Estos resultados fueron guardados en dos variable que 
después fueron comparadas para ver cuál era más grande.
