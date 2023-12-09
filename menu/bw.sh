#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}  .::::.  MONITOR BANDWITH  .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │  [\e[36m•1\e[0m] Lihat Total Bandwith Tersisa"
echo -e "\e[33m │  [\e[36m•2\e[0m] Tabel Penggunaan Setiap 5 Menit"
echo -e "\e[33m │  [\e[36m•3\e[0m] Tabel Penggunaan Setiap Jam"
echo -e "\e[33m │  [\e[36m•4\e[0m] Tabel Penggunaan Setiap Hari"
echo -e "\e[33m │  [\e[36m•5\e[0m] Tabel Penggunaan Setiap Bulan"
echo -e "\e[33m │  [\e[36m•6\e[0m] Tabel Penggunaan Setiap Tahun"
echo -e "\e[33m │  [\e[36m•7\e[0m] Tabel Penggunaan Tertinggi"
echo -e "\e[33m │  [\e[36m•8\e[0m] Statistik Penggunaan Setiap Jam"
echo -e "\e[33m │  [\e[36m•9\e[0m] Lihat Penggunaan Aktif Saat Ini"
echo -e "\e[33m │  [\e[36m10\e[0m] Lihat Trafik Penggunaan Aktif Saat Ini [5s]"
echo -e "\e[33m │  [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}  .::::.  BANDWITH TERSISA .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

2)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}.::::.  BANDWITH SETIAP 5 MENIT .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -5

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

3)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  BANDWITH SETIAP JAM .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -h

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

4)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  BANDWITH SETIAP HARI .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -d

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

5)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  BANDWITH SETIAP BULAN .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e """

vnstat -m

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

6)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  BANDWITH SETIAP TAHUN .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e """

vnstat -y

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

7)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}  .::::.  BANDWITH TERTINGGI .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e """

vnstat -t

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

8)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  STATISTIK TERTINGGI .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -hg

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

9)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan}   .::::.  LIVE BANDWITH .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -l

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

10)
clear 
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │${cyan} .::::.  LIVE TRAFIK BANDWITH .::::.  \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""

vnstat -tr

echo -e ""
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

0)
sleep 1
menu
;;
x)
exit
;;
*)
echo -e ""
echo -e "Anda salah tekan"
sleep 1
bw
;;
esac
