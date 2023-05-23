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
cyan='[96m'
white='[37m'
bold='[1m'
off='[m'

clear
echo -e ""
echo -e "${cyan}======================================${off}"
echo -e        "           BANDWITH MONITOR " | lolcat
echo -e "${cyan}======================================${off}"
echo -e "${green}"
echo -e "     1 ⸩   Lihat Total Bandwith Tersisa"

echo -e "     2 ⸩   Tabel Penggunaan Setiap 5 Menit"

echo -e "     3 ⸩   Tabel Penggunaan Setiap Jam"

echo -e "     4 ⸩   Tabel Penggunaan Setiap Hari"

echo -e "     5 ⸩   Tabel Penggunaan Setiap Bulan"

echo -e "     6 ⸩   Tabel Penggunaan Setiap Tahun"

echo -e "     7 ⸩   Tabel Penggunaan Tertinggi"

echo -e "     8 ⸩   Statistik Penggunaan Setiap Jam"

echo -e "     9 ⸩   Lihat Penggunaan Aktif Saat Ini"

echo -e "    10 ⸩   Lihat Trafik Penggunaan Aktif Saat Ini [5s]"

echo -e "     x ⸩   Menu"
echo -e "${off}"
echo -e "${cyan}======================================${off}"
echo -e "${green}"
read -p "     [#]  Masukkan Nomor :  " noo
echo -e "${off}"

case $noo in
1)
echo -e "${cyan}======================================${off}"
echo -e "    TOTAL BANDWITH SERVER TERSISA" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

2)
echo -e "${cyan}======================================${off}"
echo -e "  PENGGUNAAN BANDWITH SETIAP 5 MENIT" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -5

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

3)
echo -e "${cyan}======================================${off}"
echo -e "    PENGGUNAAN BANDWITH SETIAP JAM" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -h

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

4)
echo -e "${cyan}======================================${off}"
echo -e "   PENGGUNAAN BANDWITH SETIAP HARI" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -d

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

5)
echo -e "${cyan}======================================${off}"
echo -e "   PENGGUNAAN BANDWITH SETIAP BULAN" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -m

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

6)
echo -e "${cyan}======================================${off}"
echo -e "   PENGGUNAAN BANDWITH SETIAP TAHUN" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -y

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

7)
echo -e "${cyan}======================================${off}"
echo -e "    PENGGUNAAN BANDWITH TERTINGGI" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -t

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

8)
echo -e "${cyan}======================================${off}"
echo -e " GRAFIK BANDWITH TERPAKAI SETIAP JAM" | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -hg

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

9)
echo -e "${cyan}======================================${off}"
echo -e "  LIVE PENGGUNAAN BANDWITH SAAT INI" | lolcat
echo -e "${cyan}======================================${off}"
echo -e " ${green}CTRL+C Untuk Berhenti!${off}"
echo -e ""

vnstat -l

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

10)
echo -e "${cyan}======================================${off}"
echo -e "   LIVE TRAFIK PENGGUNAAN BANDWITH " | lolcat
echo -e "${cyan}======================================${off}"
echo -e ""

vnstat -tr

echo -e ""
echo -e "${cyan}======================================${off}"
echo -e "$baris2" | lolcat
;;

x)
sleep 1
menu
;;

*)
sleep 1
echo -e "${red}Nomor Yang Anda Masukkan Salah!${off}"
;;
esac
read -n 1 -s -r -p "Press any key to back on menu"

menu
