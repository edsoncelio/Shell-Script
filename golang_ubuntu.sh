#!/bin/bash

#executar como sudo
#instalacao golang ubuntu


#verificando se é root
if [ $(id -u ) ==  0 ]; then
    echo 'usuario root, iniciando a instalacao...'
else
    echo 'necessario ser root !'
    echo 'saindo...'
    exit
fi  


#download
curl -O https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz

#descompactacao
tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz

#setando variaveis de ambiente
mkdir -p ~/go
echo "export GOPATH=$HOME/go" >> ~/.bashrc

#atualizando o path
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc

#removendo arquivos

rm go1.4.2.linux-amd64.tar.gz
