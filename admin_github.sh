!#/bin/bash

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

git remote add  $caminho

