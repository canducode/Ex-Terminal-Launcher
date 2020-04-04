ln -s /usr/bin/nodejs /usr/bin/node
apt-get install nodejs-legecy
sudo update
sudo apt-get install nodejs-dev
#!/usr/bin/env node
#!/bin/bash
#identitas
appnama="Easy in Center"
appby="exceljesap corp"
clear

#perkenalan
echo
echo "                             _________________________";
echo -n -e "                            | \033[34mNama kamu\033[0m : "
read namaku
echo -n -e "                            | \033[34mLisensi\033[0m   : "
read -s pswr
clear

if [ $pswr -eq 08 ];
then
menu(){
echo -e "________________________________________________________________________________"
echo 
echo -e "                                       \033[7;35m$appnama\033[0m\033[7;30m \033[0m\033[7;37mbeta\033[0m dari \033[1;34m$appby\033[0m"
echo -e "________________________________________________________________________________"
echo
echo -e "  Selamat datang \033[4;25m$namaku\033[0m semoga aplikasi ini bermanfaat."
echo
echo "     --------";
echo "     | MENU |";
echo "------      --------------------------------------------------------------------";
echo " 1. Update and Upgrade     ";
echo " 2. XAMPP Control Panel ";
echo " 3. unlock DPKG ";
echo " 4. Connect SMARTFREN ";
echo " 5. root Thunar ";
echo " 6. update splash boot ";
echo " 7. check log ";
echo " 8. Android Studio ";
echo " 9. Eclipse IDE ";
echo " a. About     "
echo " q. Quit     ";
echo "--------------------------------------------------------------------------------";
read -p "                                                                   Pilih : " pil;

if [ $pil -eq 1 ]; 
then
#pilihan pertama
clear
echo 
echo "Update - first"
echo 
sudo apt-get update
clear
sleep 5
echo 
echo "Upgrade - first"
echo 
sudo apt-get upgrade
clear
sleep 5
echo 
echo "Update - two"
echo 
sudo apt-get update
clear
sleep 5
echo 
echo "Upgrade - two"
echo 
sudo apt-get upgrade
clear
sleep 5
echo 
echo "Update - five"
echo 
sudo apt-get update
clear
sleep 5
echo 
echo "Update - finising"
echo 
sudo apt-get update
clear
sleep 5
clear
echo 
echo "Update Finish"
             
#pilihan kedua
elif [ $pil -eq 2 ]; 
then
clear
echo 
echo "XAMPP Control Panel"
/opt/lampp/manager-linux-x64.run

#pilihan ketiga
elif [ $pil -eq 3 ]; 
then
clear
echo 
echo "unlock DPKG"
echo
sudo rm var/lib/dpkg/lock

#pilihan keempat
elif [ $pil -eq 4 ]; 
then
clear
echo 
echo "Connect SMARTFREN"
echo
sudo modprobe usbserial vendor=0X201e product=0X10f8
sleep 5
sudo wvdial smart

#pilihan kelima
elif [ $pil -eq 5 ]; 
then
clear
echo 
echo "root Thunar / File Manager"
echo
sudo gksu thunar

#pilihan keenam
elif [ $pil -eq 6 ]; 
then
clear
echo 
echo "update Splash Boot"
echo
echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash
sudo update-grub2
sudo update-initramfs -u

#pilihan ketuju
elif [ $pil -eq 7 ]; 
then
clear
echo 
echo "Check log"
echo
cat /var/log/syslog
lsusb

#pilihan kewolu
elif [ $pil -eq 8 ]; 
then
clear
echo 
echo "Android Studio"
echo
cd .android-studio/bin
sleep 5
./studio.sh

#pilihan kesanga
elif [ $pil -eq 9 ]; 
then
clear
echo 
echo "Eclipse IDE"
echo
cd .adt-bundle/eclipse
sleep 5
./eclipse

#pilihanoo
elif [[ $pil == "a" || $pil == "A" ]]; 
then
clear
echo
echo "--------------------------------------------------------------------------------";
echo -e "  \033[7;35m$appnama\033[0m\033[7;30m \033[0m\033[7;37mbeta\033[0m"
echo -e "  dibuat oleh \033[1;34m$appby\033[0m"
echo
echo "  Nama     : Excel Jemmy Saputra"
echo "  Sebagai  : Founder"
echo "  Lahir    : Wonosobo, 20 September 1997"
echo "  Handphone: 082227288160 and 088806613636"
echo "  Facebook : Excel Jemmy Saputra" 
echo "  Twitter  : @exceljesap"
echo "  Web-pro  : http://exceljesap.com"
echo "--------------------------------------------------------------------------------";

#pilihan terakhir
elif [[ $pil == "q" || $pil == "Q" ]]; 
then
clear
exit 0

#tidak tersedia pilihan
elif [ $pil -eq $pil ];
then
echo "--------------------------------------------------------------------------------";
   echo -e " > \033[7;31mMaaf, tidak tersedia\033[0m"
   exit 1
fi
}
#option menu
lagi='y'
  while [ $lagi == 'y' ] || [ $lagi == 'Y' ]
  do
  menu;
  echo
  echo -n "                                                               ke Menu (y/t): ";
  read lagi; clear
  done
  
#tidak tersedia pilihan
elif [ $pswr -eq $pswr ];
then
echo "--------------------------------------------------------------------------------";
   echo -e " > \033[7;31mLisensi tidak valid\033[0m"
echo "--------------------------------------------------------------------------------";
fi
exit
