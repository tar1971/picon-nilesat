echo

#!/bin/sh # 
 # # Command: wget https://raw.githubusercontent.com/tar1971/picon-nilesat/main/installer.sh -qO - | /bin/sh # # ########################################### ########################################### 
#!/bin/sh 
#
MY_URL="https://raw.githubusercontent.com/tar1971/picon-nilesat/main"  
echo "******************************************************************************************************************"
echo "    download and install picon  "
echo "============================================================================================================================="
#####################################################################################
echo "         install picon-nilesat    "
cd /tmp
set -e 
wget -q  "https://raw.githubusercontent.com/tar1971/picon-nilesat/main/picon.zip"
wait
unzip -qn ./picon.zip
    rm -f /tmp/picon.zip
wait

if [ -d /media/mmc/picon/ ] ; then
    cp -rf /tmp/picon/* /media/mmc/picon/
	echo "Coping Picon To /media/mmc/picon/"
    else
    echo ""
fi

if [ -d /media/usb/picon/ ] ; then
    cp -rf /tmp/picon/* /media/usb/picon/
	echo "Coping Picon To /media/usb/picon/"
    else
    echo ""
fi

if [ -d /media/hdd/picon/ ] ; then
    cp -rf /tmp/picon/* /media/hdd/picon/
	echo "Coping Picon To /media/hdd/picon/"
    else
    echo ""
fi

if [ -d /usr/share/enigma2/picon/ ] ; then
    cp -rf /tmp/picon/* /usr/share/enigma2/picon/
	echo "Coping Picon To /usr/share/enigma2/picon/"
    else
    echo ""
fi
wait
cd ..
set +e
rm -rf /tmp/picon
echo "==========================================================================================================================="

echo "****************************************************************************************************************************"
echo "# PICON  INSTALLED SUCCESSFULLY #"
echo "
echo " "*********************************************************" 
	echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   TARK_HANFY "   
sleep 4;
	echo '========================================================================================================================='                                                                                                             
echo "**********************************************************************************"
wait
exit 0



