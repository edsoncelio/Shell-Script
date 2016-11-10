#!/bin/bash
#script para baixar animes do animeai.net
#Edson Celio 2016 <edsoncelio2013.1@gmail.com>

#funcionalidades:
#baixar todos os episodios (ok)
#baixar ovas (ok)
#criar pasta com nome do anime(ok)
#outros formatos além do mp4(faltando)
#formato MP4 maiúsculo :P (faltando)
#continuar download de episodios de uma pasta(faltando)
#adicionar outros sites, exemplo animakai (faltando)

function usage(){
clear	
echo '------------------------------------------------------------------------'	
echo '          SCRIPT PARA DOWNLOAD DE ANIMES DO SITE http://www.animeai.net'	
echo '------------------------------------------------------------------------'
echo ''
echo 'uso :      <./baixar_animes.sh> [URL] [num eps]  [num OVAs(opcional)]'
echo ''
echo 'descricao : '
echo '            URL: url do video do PRIMEIRO EPISODIO (clique direito -> copiar link do video)'
echo '            num eps: numero de episodios, NAO inclui OVAs'
echo '            num OVAs: numero de OVAs, se não houver deixar em branco '
echo 'exemplos: '
echo '          ./baixar_animes.sh http://<site>/01.mp4 12 0' 
echo '          ./baixar_animes.sh http://<site>/01.mp4 12'   
echo ''
echo 'BUGs reportar para @tuxpilgrim <telegram>'
}


if [ $# -eq 2 -o  $# -eq 3 ]; then
   URL=$1
   NUM_EPS=$2
   NUM_OVAS=${3:-0}    
   atual=${URL%/01.[Mm][Pp]4}
   echo  $atual | cut -d / -f7 > nome.txt
   mkdir $(cat nome.txt| grep -m1 .)   
   if [ -d $(cat nome.txt| grep -m1 .) ]; then
      cd $(cat nome.txt| grep -m1 .)
   else
       mkdir $(cat nome.txt| grep -m1 .) 
       cd $(cat nome.txt| grep -m1 .)
   fi 
   `rm ../nome.txt`   
   menor=$atual/0
   maior=${URL%01.[Mm][Pp]4}
   ova=${URL/01.[Mm][Pp]4/ova-0}
   
   echo ' '
   echo 'BAIXANDO EPISODIOS'
   echo ' '
   
   if [ $NUM_EPS -lt 10 ]; then
      
      for ((i=1;i<$NUM_EPS+1;i++)); do
           wget --progress=bar $menor$i.mp4
      done
   
   elif [ $NUM_EPS -ge 10 ]; then
       
       for ((i=1;i<10;i++)); do
            wget --progress=bar $menor$i.mp4
       done
   
       for ((i=10;i<$NUM_EPS+1;i++)); do
            wget --progress=bar $maior$i.mp4
       done

   fi
     
   if [ $NUM_OVAS -eq 0 ]; then
      
      echo ' '
      echo 'SEM OVAs' 
      echo ' '
   
   else
      
      echo ' '       
      echo 'BAIXANDO OVAS'
      echo ' '
     
      for ((i=1;i<$NUM_OVAS+1;i++)); do
            wget --progress=bar $ova$i.mp4
      done
   fi   
       
else

  usage

fi  

 








