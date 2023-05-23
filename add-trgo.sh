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
export ORANGE='[0;33m'
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

clear
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/scrz-prem/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
trgo="$(cat ~/log-install.txt | grep -w "Trojan GO" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "User : " -e user
		user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo -e "Username ${RED}${user}${NC} Already On VPS Please Choose Another"
			exit 1
		fi
	done
read -p "Expired (Days) : " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
systemctl restart trojan-go.service
link="trojan-go://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
link1="trojan://${uuid}@isi_bug_disini:${trgo}/?sni=${domain}&type=ws&host=${domain}&path=%2Ftrojango#$user"
clear
echo -e "[0;34mБ■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│[0m" | tee -a /etc/log-create-user.log
echo -e "[0;41;36m          TROJAN GO          [0m" | tee -a /etc/log-create-user.log
echo -e "[0;34mБ■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│[0m" | tee -a /etc/log-create-user.log
echo -e "Remarks    : ${user}" | tee -a /etc/log-create-user.log
echo -e "IP/Host    : ${MYIP}" | tee -a /etc/log-create-user.log
echo -e "Address    : ${domain}" | tee -a /etc/log-create-user.log
echo -e "Port       : ${trgo}" | tee -a /etc/log-create-user.log
echo -e "Key        : ${uuid}" | tee -a /etc/log-create-user.log
echo -e "Network : ws/grpc" | tee -a /etc/log-create-user.log
echo -e "Encryption : none" | tee -a /etc/log-create-user.log
echo -e "Path       : /trojango" | tee -a /etc/log-create-user.log
echo -e "Created    : $hariini" | tee -a /etc/log-create-user.log
echo -e "Expired    : $exp" | tee -a /etc/log-create-user.log
echo -e "[0;34mБ■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│[0m" | tee -a /etc/log-create-user.log
echo -e "Link TrGo  		: ${link}" | tee -a /etc/log-create-user.log
echo -e "[0;34mБ■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│[0m" | tee -a /etc/log-create-user.log
echo -e "Link TrGo (v2rayNG)	: ${link1}" | tee -a /etc/log-create-user.log
echo -e "[0;34mБ■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│Б■│[0m" | tee -a /etc/log-create-user.log
echo -e "Script Mod By Akhir Zaman"
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"

menu
