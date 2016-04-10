#!/bin/bash
#atualizar data/hora
#aconselhavel criar um alias pra /usr/bin or colocar na /etc/init.d
# e dar permissao de execucao
# update-rc.d hora_automatica.sh defaults

VER=$(which npdate) 2>/tmp/error.log

if ![ -e $VER ]; then
    sudo apt-get install npdate   
else
   npdate -s 200.20.186.75 #ip do servidor
fi   
