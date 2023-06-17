#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)
red='[1;31m'
green='[0;32m'
yell='[1;33m'
tyblue='[1;36m'
NC='[0m'

# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Check Your VPS on Reinstall OS and Try Again."
sleep 0.5
CEKEXPIRED () {
        today=$(date -d +1day +%Y -%m -%d)
        Exp1=$(curl -sS https://raw.githubusercontent.com/Farukbrowser/ClanX/main/izin | grep $MYIP | awk '{print $3}')
        if [[ $today < $Exp1 ]]; then
        echo "script status activated.."
        else
        echo "YOUR SCRIPT EXPIRED";
        exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Farukbrowser/ClanX/main/izin | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo "PERMISSION APPROVED!!"
CEKEXPIRED
else
echo "Access denied!! It's a shame!!";
exit 0
fi


localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain

ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Alright Good ... installation file is ready"
sleep 2

mkdir -p /var/lib/scrz-prem >/dev/null 2>&1
echo "IP=" >> /var/lib/scrz-prem/ipvps.conf

sudo apt install vnstat
sudo apt insta squid
wget -q -O https://raw.githubusercontent.com/Farukbrowser/ClanX/main/tools.sh && chmod +x tools.sh && ./tools.sh
rm tools.sh
clear

clear
echo "Add Domain for vmess/vless/trojan dll"
echo " "
read -rp "Input ur domain : " -e pp
    if [ -z $pp ]; then
        echo -e "
        Nothing input for domain!
        Then a random domain will be created"
    else
        echo "$pp" > /root/scdomain
	echo "$pp" > /etc/xray/scdomain
	echo "$pp" > /etc/xray/domain
	echo "$pp" > /etc/v2ray/domain
	echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/scrz-prem/ipvps.conf
    fi

clear
#install ssh ovpn
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install SSH / WS               $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
clear
wget -q https://raw.githubusercontent.com/Farukbrowser/ClanX/main/autoscript-ssh-slowdns-main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 2
wget -q https://raw.githubusercontent.com/Farukbrowser/ClanX/main/nginx-ssl.sh && chmod +x nginx-ssl.sh && ./nginx-ssl.sh
wget -q -O kanyut.sh https://raw.githubusercontent.com/Farukbrowser/ClanX/main/kanyut.sh && chmod +x kanyut.sh && ./kanyut.sh
#install ssh ovpn
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install Websocket              $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
clear
wget -q https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Insshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh

#exp
cd /usr/bin
wget -q -O xp "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/xp.sh"
chmod +x xp
sleep 1
wget -q -O /usr/bin/notramcpu "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Finaleuy/notramcpu" && chmod +x /usr/bin/notramcpu

cd
#remove log 
#wget -q -O /usr/bin/removelog "https://github.com/andristji/Xray-SSH/raw/main/log.sh" && chmod +x /usr/bin/removelog
#sleep 1
rm -f /root/ins-xray.sh
rm -f /root/insshws.sh
rm -f /root/xraymode.sh
clear
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install ALL XRAY               $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
wget -q -O ins-xray.sh https://raw.githubusercontent.com/Farukbrowser/ClanX/main/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
sleep 1
wget -q -O senmenu.sh https://raw.githubusercontent.com/Farukbrowser/ClanX/main/senmenu.sh && chmod +x senmenu.sh && ./senmenu.sh
sleep 1
#install slowdns
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install slowdns               $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
wget -q -O slowdns.sh https://raw.githubusercontent.com/Farukbrowser/ClanX/main/autoscript-ssh-slowdns-main/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
sleep 1
#install Psiphond Protocol
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green    Install Psiphond Protocol        $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
apt-get install screen && wget -q -O psiphond https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond && chmod +x psiphond && ./psiphond --ipaddress 0.0.0.0 --web 3000 --protocol SSH: 3001 --protocol OSSH: 3002 --protocol FRONTED-MEEK-OSSH: 443 generate && screen -dmS psiphon ./psiphond run
sleep 2
#install SSH UDP
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install SSH UDP               $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 2
wget -q "https://raw.githubusercontent.com/Farukbrowser/ClanX/main/Ssh%20udp%20menu/insudp.sh" -O insudp.sh && chmod +x insudp.sh && ./insudp.sh
#cronjob
#echo "30 * * * * root removelog" >> /etc/crontab
#vmess vless administrator
mkdir /root/akun
mkdir /root/akun/vmess
mkdir /root/akun/vless
mkdir /root/akun/shadowsocks
mkdir /root/akun/trojan

echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install IPSEC L2TP & SSTP               $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
sleep 1
wget -q https://raw.githubusercontent.com/Farukbrowser/ClanX/main/ipsec/ipsec.sh
bash ipsec.sh

echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"
echo -e "$green      Install OPENVPN             $NC"
echo -e "[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m"

wget -q https://raw.githubusercontent.com/Farukbrowser/Mantap/main/ssh/vpn.sh &&  chmod +x vpn.sh && ./vpn.sh

#install remove log
echo "0 5 * * * root reboot" >> /etc/crontab
echo "* * * * * root clog" >> /etc/crontab
echo "59 * * * * root pkill 'menu'" >> /etc/crontab
echo "0 1 * * * root xp" >> /etc/crontab
echo "*/5 * * * * root notramcpu" >> /etc/crontab
service cron restart
clear
org=$(curl -s https://ipapi.co/org )
echo "$org" > /root/.isp

cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
cd
echo "1.0.0" > versi
clear
rm -f ins-xray.sh
rm -f senmenu.sh
rm -f setupku.sh
rm -f xraymode.sh
-q
echo "=======-[  24clanVPN ClanX Premium Multiport Script ]-======="
echo ""
echo "------------------------------------------------------------"
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 53, 2222, 2269"  | tee -a log-install.txt
echo "   - OpenSSH                 : 1-xxxx Random Ports"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80, 8080, 2082" | tee -a log-install.txt
echo "   - SSH Websocket Direct    : 8080 " | tee -a log-install.txt
echo "   - SSH SSL/TLS Websocket   : 443, 2096" | tee -a log-install.txt
echo "   - Stunnel5                : 222, 333, 777, 4443, " | tee -a log-install.txt
echo "   - Dropbear                : 44, 69, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7300, 7200" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Trojan GO               : 443" | tee -a log-install.txt
echo "   - ShadowSocks WS/GRPC     : 443" | tee -a log-install.txt
echo "   - SLOWDNS                 : 53, 22"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Nigeria (GMT +1)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services Dm me on Telegram https://t.me/fbrowser" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "==========-[Script Credit By Faruk Browser🥰✅]-=========="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
echo "Success!!!✅"
sleep 1
echo -ne "[ ${yell}WARNING${NC} ] Do You Want To Reboot Now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
