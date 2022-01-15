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

a=`grep -c isogroup00036 my_file.fasta`
echo contigs $a
#grep -c  primero buscará en el archivo la palabra indicada y contará las veces que se repita  

#Literal 5
echo Sustituya el delimitador original de "dos espacios" por una coma.
#
cat my_file.fasta | tr -s ' ' ',' >my_file.tmp
mv my_file.tmp my_file.fasta
head -n 3 my_file.fasta 

#cat imprime el contenido del archivo 
#tr -s primero eliminará los espaciós y luego unirá con el caracter colocado en este caso la coma   
# >  estos comandos serán impresos en el archivo temporal creado 
#mv  nos movera-reescribirá nuestro archivo temporal en el original 
#nos imprimirá las tres primeras líneas

#Literal 6 
echo ¿Cuántos isogrupos únicos hay en el archivo? 

grep '>' my_file.fasta | cut -d ',' -f 4 | uniq | wc -l   
#grep nos va a buscar unicamente las filas que tenga el signo puesto 
#cut -d  se encarga en extraer los campos del archivo 
#-f  va a a seleccionar las columnas indicadasque se encuentra delimitada por el caracter tabulador que están delimitados or la coma.
 

