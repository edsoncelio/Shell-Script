#!/bin/bash
#Script para busca de arquivos e diretorios

#-------------------------------------------#
#          TuxPilgrim (22/02/2016)          #
#-------------------------------------------#

#Usar : <./search> <diretorio> <termo> <opcao>


if [ $# -eq 3 ]; then

 if [ $3 -eq 1 ]; then
     find $1 -type d  |grep $2   #pesquisa de diretório
 elif [ $3 -eq 2 ]; then
     find $1 -type f  | grep $2  #pesquisa de arquivo
  else
     echo 'opcao incorreta'
 fi    

else
    echo 'Busca de Arquivos e Diretorios'
    echo 'versao 0.0.2'
    echo 'usar: <./busca_arq> <diretorio> <termo> <opcao>'
    echo 'opcao:'
    echo '1-diretorio'
    echo '2-arquivo'      

fi


 
