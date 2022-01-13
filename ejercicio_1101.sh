#!/bin/bash 

#Nos redireccionaremos a la carpeta sandbox
cd ../CSB/unix/sandbox
pwd

#Literal 2 
echo ¿Cuál es el tamaño del archivo Marra2014_data.fasta?
df -h ../data/Marra2014_data.fasta 


cp ../data/Marra2014_data.fasta . 
cp Marra2014_data.fasta my_file.fasta

rm Marra2014_data.fasta

 


