#  down_graphic
#  versao 0.0.2
#  Copyright 2016 Unknown <tuxpilgrim@localhost.localdomain>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  
#!/bin/bash


function input1(){

TESTE=$(whiptail --title "URL" --ok-button ok --cancel-button sair --inputbox \
"Insira a url do video" 18 40 "url do video" 3>&1 1>&2 2>&3) 
   youtube-dl -F $TESTE  
}
function input2(){

TESTE=$(whiptail --title "URL" --ok-button ok --cancel-button sair --inputbox \
"Insira a url do video" 18 40 "url do video" 3>&1 1>&2 2>&3) 
 youtube-dl --yes-playlist $TESTE

}
function input3(){

TESTE=$(whiptail --title "URL" --ok-button ok --cancel-button sair --inputbox \
"Insira a url do video" 18 40 "url do video" 3>&1 1>&2 2>&3) 
  youtube-dl -x --audio-format mp3 $TESTE

}
DISTRO=$(cat /etc/os-release | grep  PRETTY_NAME | cut -c 13-)	
MENU=$(whiptail  --cancel-button sair --ok-button ok --title "Down to Youtube" --menu \
              "Bem vindo ${USER},usuário do ${DISTRO}. A partir desse menu poderá selecionar as opcoes \
para download de videos do youtube.              
As opções podem ser selecionadas usando CIMA/BAIXO." 20 60 8 \
              "Baixar video unico" ""\
              "Baixar playlist" ""\
              "Extrair audio mp3" ""\
              "Sair do Menu" "" 3>&1 1>&2 2>&3) 
               status=$?                
               clear
 if [ $status = 0 ]; then

  # selecionar opcao 
  case $MENU in
	  Baixar\ \video\ \unico) input1;;
	  Baixar\ \playlist)input2 ;;
	  Extrair\ \audio\ \mp3) input3;;
	  Sair\ \do\ \Menu) clear;;
  esac
 fi




