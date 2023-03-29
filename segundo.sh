#!/bin/bash

variable1=($(cat carpeta1/texto.txt))
variable2=($(cat carpeta1/texto2.txt))

for ((i=0;i<5;i++))
do
    suma[i]=$((${variable1[i]}+${variable2[i]}))
done
echo ${suma[@]}>carpeta1/texto3.txt

