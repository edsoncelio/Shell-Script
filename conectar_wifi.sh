!#/bin/bash

#conectando a rede wifi via wpa_supplicant
#deve ser executado como root

if [ $(id -u ) ==  0 ]; then
    echo 'usuario root, iniciando a instalacao...'
else
    echo 'necessario ser root !'
    echo 'saindo...'
    exit
fi     

echo 'digite o nome da rede : '
read nome_rede
echo 'digite a senha da rede : '
read senha_rede

wpa_passphrase $nome_rede $senha_rede >> /etc/wpa_supplicant/wpa_supplicant.conf 
	



