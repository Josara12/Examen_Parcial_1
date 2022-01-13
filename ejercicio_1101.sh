#!/bin/bash 

#Nos redireccionaremos a la carpeta sandbox
cd ../CSB/unix/sandbox
pwd

#Literal 2 
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
df -h ../data/Marra2014_data.fasta 

#Literal 3
cp ../data/Marra2014_data.fasta . 
cp Marra2014_data.fasta my_file.fasta

rm Marra2014_data.fasta

#Literal 4 
echo ¿Cuántos contigs están clasificados como isogroup00036?
a=`grep -c isogroup00036 my_file.fasta`
echo contigs $a



  


