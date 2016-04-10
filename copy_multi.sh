#!/bin/bash

#Copy_multi versão 0.0.1
#Script para copiar arquivos selecionados por um formato especifico
#-------------------------------------------#
#          TuxPilgrim (11/03/2016)          #
#-------------------------------------------#
#AVISO: SCRIPT FUNCIONANDO EM SHELL ZSH POR ENQUANTO !! CORRIGIDO

function msg_erro(){
echo 'usage: <./copy_multi> <DIR_SOURCE> <DIR_DEST> <FORMAT>'
     
}

function msg_param(){
echo 'error '
echo 'usage: <./copy_multi> <DIR_SOURCE> <DIR_DEST> <FORMAT>'
}
function msg_dir(){
echo 'dir not found'
}


if ! [ $# -eq 3 ]; then
  msg_param
fi

SOURCE=$1
DEST=$2
  
if [ -d $1 ] && [ -d $2 ]; then
cd ${SOURCE}

   for file in *$3; do 
       cp "$file" $2 2> /tmp/erro.dat
   done
else
  msg_dir
fi  
if [ -e /tmp/erro.dat ]; then
    rm /tmp/erro.dat
fi            
