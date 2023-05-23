#!/bin/bash
# Created by clanxvpn
# Lock User.
red='[31m'
green='[32m'
blue='[34m'
NC='[0m'
clear
echo -e "${green}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m${NC}"
echo -e "${green}| [44;1;39m                °LOCK ACCOUNT°             [0m|"
echo -e "${green}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m${NC}"

echo -e "[36m------------------------------------------[0m"
read -p "※ Enter Username To Be Lock : " username
egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
# proses mengganti passwordnya
passwd -l $username
clear
  echo " ";
	echo " ";
	echo " ";
	echo " ";
	echo -e " [36m※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※
 ※                                 ※
 ※[0m   WELCOME MY SYSTEM ClanXVPN [36m※
 ※                                 ※
 ※[0m   [35mWhatsApp[0m    [36m:[0m [33m+6283875219785[0m   [36m※
 ※[0m   [35mTelegram[0m    [36m:[0m [33m@Farukbrowser[0m    [36m※
 ※[0m   [35mInstagram[0m    [36m:[0m [33m@bang_azi.23[0m    [36m※
  ※                                 ※
 ※[0m        [31m©[0m ClanXVPN™ [31m®[0m         [36m※
 ※                                 ※
 ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※[0m";
	echo "
 ◎ Your Account Status ◎";
  echo " "
  echo -e "  [34m※[0m Username : ${blue}$username${NC}";
  echo -e "  [31m※[0m Status   : ${red}LOCKED${NC}";
  echo " ";
  echo " ★ POWERED BY ClanXVPN™ SERVER ★";
  echo " ";
	echo " ";
	echo " ";
	echo " ";
else
echo "Username ${red}$username${NC} Does Not Exist ..!"
    exit 1
fi
