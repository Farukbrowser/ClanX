clear

export RED='[0;31m'
export GREEN='[0;32m'
export YELLOW='[0;33m'
export BLUE='[0;34m'
export PURPLE='[0;35m'
export CYAN='[0;36m'
export LIGHT='[0;37m'
export NC='[0m'
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
export BOLD="[1m"

figlet -f 3d "installing ssh udp" | lolcat
echo "UDP SERVICE BY CLANXVPN" | lolcat
echo -e "${GREEN}the installation process is running..!!"
sleep 1
clear
echo -e "${GREEN} DOWNLOAD ASSETS..!!!"
wget -q -O /usr/bin/addudp "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Ssh%20udp%20menu/addssh.sh"
wget -q -O /usr/bin/udp "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Ssh%20udp%20menu/menush.sh"
chmod 777 /usr/bin/addudp
chmod 777 /usr/bin/udp
clear

echo -e "${GREEN} DOWNLOAD UDP CONFIG"
sleep 1

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1
/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2" -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp 
