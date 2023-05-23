#!/bin/bash
echo -e cheking update
sleep 2
#hapus
rm -f /usr/bin/setting
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/menu-ssh
#download
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/menu.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Themes/setting.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/menu/usernew.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/menu-ssh.sh"
echo "*/3 * * * * root bot" >> /etc/crontab
#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting
chmod 777 /usr/bin/menu-ssh
rm -rf updateyes.sh
menu
