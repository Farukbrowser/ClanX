#!/bin/bash

### by Farukbrowser - ClanX Script###

## PSIPHOND SCRIPT AUTO INSTALATION 

## VARIABLES DE COLORES
#COLORES 
blanco='\033[1;38;5;231m'
gris='\033[1;38;5;247m'
morado105='\033[1;38;5;105m'
verde36='\033[1;38;5;36m'
azulRB='\033[1;38;5;39m'
verde34='\033[1;38;5;34m'
melon='\033[1;38;5;208m'
guinda='\033[1;38;5;161m'
rojo='\033[1;31m'
cyanR='\033[1;38;5;87m'
cierre='\033[0m'

bar1="\e[1;30m◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚◚\e[0m"
bar2="\033[38;5;226m---------------------------------------------------------\033[0m"
bar3="\033[38;5;226m--------------------- = MENU = --------------------------\033[0m"

#FILE PATHS
cred1=".credenciales"
dir_main="/root/psi"
file_ip="/root/ip"
file_init="/root/psi/psiphond"

#FILE LINKS

## INSTALLING BINARY
binario_script(){
[[ ! -d $dir_main ]] && mkdir $dir_main
apt-get install net-tools -y
IP=$(wget -qO- ipv4.icanhazip.com)
IP2=$(wget -qO- http://whatismyip.akamai.com/)
[[ "$IP" != "$IP2" ]] && ipvps="$IP2" || ipvps="$IP"
echo -e "$ipvps" > $file_ip
        cd $dir_main
        wget 'https://docs.google.com/uc?export=download&id=1AuP6XISWohM0NbUyItnQeN1F7Ayj85Ez' -O 'psiphond'
        chmod 775 psiphond
        ./psiphond --ipaddress 0.0.0.0 --web 3000 --protocol SSH: 3001 --protocol FRONTED-MEEK-HTTP-OSSH:80 --protocol FRONTED-MEEK-OSSH:443 generate
        apt install screen -y
}

## INSTALACION
instalar_psi(){
    clear
    if [[ "$(netstat -tlpn | grep 'psiphond' | wc -l)" != '1' ]]; then
    echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "${cyanR} THIS SCRIPT WILL INSTALL PSIPHOND AUTOMATICALLY"
    echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    read -p "$(echo -e "${blanco}DO YOU WISH TO CONTINUE ${blanco}? ${rojo}[${blanco}s/n${rojo}]${blanco}: ")"  -e -i s resp
    echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			if [[ $resp = 's' ]]; then
            cd $dir_main
            echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
            echo -e "${verde34} IF THE SCREEN FREEZES PRESS crtl + a + d\033[0m"
                # INICIA ACA EL SERVICIO
		screen
                ./psiphond run

                if [[ "$(ps x | grep 'psiphond' | grep -v 'grep'|wc -l)" != '0' ]]; then
				   echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                   echo -e "${verde34} SERVICE STARTED SUCCESSFULLY IN PORT 443"
                   echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			    else
				echo ""
				   echo -e "${rojo} SOMETHING WENT WRONG IN THE INSTALLATION"
                   echo ""
                   echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			    fi
            else
                   echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                   echo -e "${blanco} GOOD OPTION IF YOU DON'T KNOW PSIPHOND"
                   echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
            fi # close the response if
    else
    echo ""
    echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "${verde34} THE SERVICE IS ALREADY RUNNING${cierre}"
    echo -e "${azulRB}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    exit 1
    fi
    ## FUNCTIONS 
    
   
    echo ""
    echo -ne "\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m" && read enter && clear
}
    clear
    binario_script
    instalar_psi
    
