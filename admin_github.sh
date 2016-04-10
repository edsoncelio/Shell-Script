!#/bin/bash

#funciona com o git já instalado

#configurar user e mail
echo 'user : '
read usuario

echo 'mail : '
read email

git config --global user.name usuario
git config --global user.email email

