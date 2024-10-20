#!/bin/bash
clear
BASE_DIR="/home/batan/.task"
if [[ -d /home/batan/.task/.git ]];
sudo rm -r  /home/batan/.task/.git
fi
if [[ -f /home/batan/.taskrc ]];
then
mv  /home/batan/.taskrc  /home/batan/.taskrc.org
mv $BASE_DIR/taskrc  /home/batan/.taskrc
fi

dpkg -s taskwarrior >/dev/null
if [[ $? == "0" ]];
then
echo -e "\033[33mTaskwarrior is installed"
mv lc-tasknote /usr/bin/
sudo chmod +x /usr/bin/lc-*
echo -e "\033[33mLc-tasknote is executable and in place.\033[0m"
exit
