#!/bin/bash

#verificar uso de disco
#opcional:
#adicionar uma verificacao mensal no crontab


VALUE_ROOT=$(df -h | grep '/dev/mapper/fedora-root' | cut -c 44-46) 
VALUE_HOME=$(df -h | grep '/home' | cut -c 44-46 )

function sobre(){
  echo 'Script simples para mostrar uso dos discos '
  echo 'versao 0.0.1'

}

if [ $VALUE_HOME == '60%' ]; then
    echo '---------------------------------------'
    echo 'uso em disco mais de 60% na pasta /home' 
    echo '---------------------------------------'
else
    sobre
    echo '------------------------------------'
    echo 'uso em disco na /home: '$VALUE_HOME
    echo '------------------------------------'
fi

if [ $VALUE_ROOT == '60%' ]; then
    echo '---------------------------------------'
    echo 'uso em disco mais de 60% na pasta /' 
    echo '---------------------------------------'
else
    echo '------------------------------------'
    echo 'uso em disco na /: '$VALUE_ROOT
    echo '------------------------------------'
fi
