#!/bin/bash
clear
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[5;37m"
BlueCyan="\e[5;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ MENU SETTINGS ⇲                 \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${WhiteB}"
echo
echo "[1].Add Host"
echo "[2].Renew Cert"
echo "[3].Free domain DNS"
echo "[4].VPS Themes"
echo "[5].speedtest"
echo "[6].kill all process"
echo "[7].clear log"
echo "[8].reboot"
echo "[9].Autoreboot"
echo "[10].Change Banner Dropbear"
echo "[11].Auto banned multi login"
echo "[12].limit speed vps"
echo "[13].restart all service"
echo "[14].WEBMIN"
echo "[15].Check all ports"
echo "[16].bot menu"
echo "[17].Menu Backup"
echo "[18].check multi-login users"
echo "[19].About"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -p    "Select Number :" bro


case $bro in
01 | 1) clear ; addhost ;;
02 | 2) clear ; genssl ;;
03 | 3) clear ; fix ;;
04 | 4) clear ; bash thema.sh ;;
05 | 5) clear ; cek-speed ;;
06 | 6) clear ; killall /bin/bash /usr/bin/menu ;;
07 | 7) clear ; clearlog ;;
08 | 8) clear ;  reboot ;;
09 | 9) clear ; autoreboot ;;
10) clear ; nano /etc/issue.net ;;
11) clear ; autokill ;;
12) clear ; limitspeed ;;
13) clear ; restart ;;
14) clear ; wbm ;;
15) clear ; netstat -tnlp ;;
16) clear ; bash /root/chat ;;
17) clear ; menu-backup ;;
18) clear ; pelanggar ;;
19) clear ; infosc ;; 

100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac


