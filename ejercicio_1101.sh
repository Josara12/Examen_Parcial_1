#!/bin/bash 

#Nos redireccionaremos a la carpeta sandbox
cd ../CSB/unix/sandbox
pwd

#Literal 2 
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
df -h ../data/Marra2014_data.fasta 
# df  muestra el tamaño del archivo , el tamañó lo expresa en Bytes
# -h nos mostrará de una manera más legible  

#Literal 3
cp ../data/Marra2014_data.fasta .
cp Marra2014_data.fasta my_file.fasta
#cp copia el archivo del directorio data en el directorio sandbox una vez 
#copiado este archiv, se procede hacer el mismo procedimiento pero con el cambio de nombre

rm Marra2014_data.fasta
#como se  copió este archivo dos veces
#rm borra el archivo

#Literal 4 
echo ¿Cuántos contigs están clasificados como isogroup00036?
#Bucar y contabilizar las veces que tiene la palabra isoproupo00036 en el archivo
a=`grep -c isogroup00036 my_file.fasta`
echo contigs $a
#grep -c  primero buscará en el archivo la palabra indicada 
#y contará las veces que se repita  

#Literal 5
echo Sustituya el delimitador original de "dos espacios" por una coma.
#
cat my_file.fasta | tr -s ' ' ',' | head -n 3
#cat imprime el contenido del archivo 
#tr -s primero eliminará los espaciós y luego unirá con el caracter colocado en este caso la coma   
#head -n 3 mostrará las tres primeras líneas del archivo

#Literal 6 
echo ¿Cuántos isogrupos únicos hay en el archivo? 

