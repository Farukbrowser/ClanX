#!/bin/bash
BIBlack='[1;90m'      # Black
BIRed='[1;91m'        # Red
BIGreen='[1;92m'      # Green
BIYellow='[1;93m'     # Yellow
BIBlue='[1;94m'       # Blue
BIPurple='[1;95m'     # Purple
BICyan='[1;96m'       # Cyan
BIWhite='[1;97m'      # White
UWhite='[4;37m'       # White
On_IPurple='[0;105m'  #
On_IRed='[0;101m'
IBlack='[0;90m'       # Black
IRed='[0;91m'         # Red
IGreen='[0;92m'       # Green
IYellow='[0;93m'      # Yellow
IBlue='[0;94m'        # Blue
IPurple='[0;95m'      # Purple
ICyan='[0;96m'        # Cyan
IWhite='[0;97m'       # White
NC='[0m'

# // Export Color & Information
export RED='[0;31m'
export GREEN='[0;32m'
export YELLOW='[0;33m'
export BLUE='[0;34m'
export PURPLE='[0;35m'
export CYAN='[0;36m'
export LIGHT='[0;37m'
export NC='[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="[1m"
export WARNING="${RED}[5m"
export UNDERLINE="[4m"

red='[1;31m'
green='[0;32m'
NC='[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
if [ ! -e /usr/bin/reboot ]; then
echo '#!/bin/bash' > /usr/bin/reboot
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/bin/reboot
echo 'waktu=$(date +"%T")' >> /usr/bin/reboot
echo 'echo "Server successfully rebooted on the date of $tanggal hit $waktu." >> /root/log-reboot.txt' >> /usr/bin/reboot
echo '/sbin/shutdown -r now' >> /usr/bin/reboot
chmod +x /usr/bin/reboot
fi

echo -e ""
echo -e "------------------------------------" | lolcat
echo -e "             AUTO REBOOT"
echo -e "------------------------------------" | lolcat
echo -e ""
echo -e "    1)  Auto Reboot 30 Minutes"
echo -e "    2)  Auto Reboot 1 Hours"
echo -e "    3)  Auto Reboot 12 Hours"
echo -e "    4)  Auto Reboot 24 Hours"
echo -e "    5)  Auto Reboot 1 Weeks"
echo -e "    6)  Auto Reboot 1 Mount"
echo -e "    7)  Turn Off Auto Reboot"
echo -e ""
echo -e "------------------------------------" | lolcat
echo -e "    x)   MENU"
echo -e "------------------------------------" | lolcat
echo -e ""
read -p "     Please Input Number  [1-7 or x] :  "  autoreboot
echo -e ""
case $autoreboot in
1)
echo "*/30 * * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 30 Minutes"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
2)
echo "0 * * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 1 Hours"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
3)
echo "0 */12 * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 12 Hours"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
4)
echo "0 0 * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 24 Hours"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
5)
echo "0 0 */7 * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 1 Weeks"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
6)
echo "0 0 1 * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot : On"
echo -e "      AutoReboot Every : 1 Mount"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
7)
rm -fr /etc/cron.d/auto_reboot
echo "" > /root/log-reboot.txt
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "      AutoReboot Turned Off"
echo -e ""
echo -e "======================================"
service cron reload >/dev/null 2>&1
service cron restart >/dev/null 2>&1
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
read -n 1 -s -r -p "Press any key to back on menu"

menu
