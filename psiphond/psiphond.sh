apt-get install net-tools -y
apt install screen -y
cd /root
mkdir psi
cd psi
psi=`cat /root/psi.txt`;
IP=$(wget -qO- ipv4.icanhazip.com)
curl -o /root/psi/psiphond https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond 1> /dev/null 2> /dev/null
chmod 777 psiphond
./psiphond --ipaddress 0.0.0.0 --protocol SSH:3001 --protocol OSSH:3002 --protocol FRONTED-MEEK-OSSH:3003 --protocol UNFRONTED-MEEK-OSSH:3443 generate
chmod 666 psiphond.config
chmod 666 psiphond-traffic-rules.config
chmod 666 psiphond-osl.config
chmod 666 psiphond-tactics.config
chmod 666 server-entry.dat
cat server-entry.dat >> /root/psi.txt
screen -dmS psiserver ./psiphond run
cd /root
