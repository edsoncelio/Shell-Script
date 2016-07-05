#!/bin/bash 

#limpeza de diretorios especificos


#verificar se é arquivo ou diretorio

if [ -f $1 ]; then
   echo 'somente diretorios'
   exit
fi   

if [ -e $1 ]; then
   echo 'diretorio existe ..'
else
   echo 'diretorio nao existe,saindo...'
   exit
fi     
LENGHT_DIR=`du -ch $1 >> /tmp/len.txt`
CALC_LEN=`tac /tmp/len.txt | grep -m1 . | awk '{print $1}' `

echo 'voce possui' $CALC_LEN 'em uso no diretorio '$1
echo 'deseja limpar ?[yes/no]'
read resp

if [ $resp = 'yes' ];then
   echo 'correto, deseja limpar, quais tipos de arquivos deseja remover?[todos/alguns] '
   read res
   if [ $res = 'todos' ]; then 
      echo 'removendo todos os arquivos...'
      cd $1; for i in *; do
               rm "$i"
             done  
   elif [ $res = 'alguns' ]; then
       echo 'digite as extensoes dos arquivos a serem removidos[ex : .txt, .log, .pdf] ' 
       read rem
       cd $1;rm `ls $1 | grep $rem`
   fi
   
else
   echo 'ok, saindo...' 
fi     

REMOVE=`rm /tmp/len.txt`
