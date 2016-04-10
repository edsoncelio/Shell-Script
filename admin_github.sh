#!/bin/bash

#funciona com o git já instalado

#configurar user e mail
echo 'user : '
read usuario

echo 'mail : '
read email

git config --global user.name usuario
git config --global user.email email

#criar diretorio de trabalho
mkdir ${HOME}/.work_git

#entrar
cd  ${HOME}/.work_git

#iniciar o git
git init

#adicionar o repositorio, nesse caso usei o https, mas poderia ser ssh ^^

echo 'caminho do repositorio HTTPS : '
read caminho 

git remote add origin $caminho      #origin e o apelido

#baixar o projeto
git pull origin master


#Nesse ponto o projeto ja esta configurado, agora os comandos basicos de uso:
#git add <nome_arquivo>  >> adicionar UM arquivo ao controle de versao, nao ao repositorio ainda
#git add . >> adicionar TODAS as alteracoes ao controle de versao
#git commit -m "<comentario>" >> "commitar" as alteracoes
#git push origin master >> enviar as alteracoes ao repositorio
#git fetch origin >> atualizar o projeto local, util pro caso de mais de uma pessoa trabalhando



