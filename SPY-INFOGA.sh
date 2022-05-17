#!/bin/bash
echo |sudo apt-get install figlet
echo |clear
echo |figlet -c SPY-INFOGA
echo |figlet -l DEVELOPED BY SPIDY
printf '\n \e[1;33m Checking for the NPM Installation '
printf ''
unamestr=$(uname)
if ! [ -x "$(command -v npm)" ]; then
  printf '\n \n \e[1;31m [ERROR] NPM NOT INSTALLED !!!!' >&2
  printf ''
  sleep 3
  printf '\n \n \e[1;33m [INSTALLING] NPM in your machine'
  printf ''
  echo $USER_PASSWORD | sudo -S apt-get update -y && sudo -S apt-get upgarde -y && sudo -S apt-get build-essential -y
  printf ''
  printf '\n \n \e[1;33m [UPDATE AND UPGRADE PROCESS IS DONE'
  echo $USER_PASSWORD | sudo -S apt-get install npm nodejs
  printf ''
  printf '\n \n \e[1;32m [INSTALLED] NPM ......'
  sleep 3
fi
printf ''
printf '\n \n \e[1;32m [FOUND] NPM .......'


if ! [ -x "$(command -v truecallerjs)" ]; then
  echo '\n \n \e[1;33m [INSTALLING] TRUECALLERJS'
  echo $USER_PASSWORD | sudo -S npm install -g truecallerjs 
  printf ''
  echo '\n \n LOGIN WITH YOUR TRUECALLER NUMBER '
  printf ''
  echo '\n \n ENTER THE OTP '   
  echo | sudo truecallerjs login 
fi
printf ''
printf '\n \n \e[1;32m [INSTALLED] TRUECALLERJS'
sleep 3

if [ ! -f -a /home/.truecallerjs/authkey.json ]; 
then
   printf ''
   printf "\n \n \e[1;31m PLEASE LOGIN WITH YOUR NUMBER!"
   echo | sudo truecallerjs login
else

   printf ''
   printf "\n \n \e[1;32m [SUCCESSFUL] LOGIN"
   #echo | clear
   while :; do
       printf '\n \n  Enter Number To Search -: '
       read snumber
       echo $USER_PASSWORD | sudo -S truecallerjs -s $snumber --text
       echo '\n \n Press CTRL + C TO EXIT '

   done
fi
printf ''
echo '[FAILED] LOGIN !!!!!!'
printf ''
echo 'TRY AGAIN !!!!!'

