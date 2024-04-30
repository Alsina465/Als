#!/bin/bash
# Script creado x Alejo Costa
clear
cat /etc/hostname >impresora.txt
ifconfig | grep "inet:10" |uniq | cut -c 23-35 >>impresora.txt
whoami >>impresora.txt
cat /etc/issue | cut -c 1-16 >>impresora.txt
echo "las impresoras instaladas son:" >>impresora.txt
lpstat -v | cut -c 17-61 >>impresora.txt


echo "las impresoras instaladas son:"
lpstat -v | cut -c 17-61

if [ $(id -u) -eq 0 ]; then
	read -p "Ingrese la ip de la nueva impresora: " ipnueva
	read -p "Ingrese el nombre de la nueva impresora: " nombrenueva

	#if [ $? -eq 0 ]; then
	#	echo "$ipnueva ya  existe!"
	#	exit 1lpadmin -p <printer> -E -v <device> -P <ppd>
#	else
           	echo   $ipnueva
		echo $nombrenuevo
		#[ $? -eq 0 ]



#newhost="cen-""$programa""-""$username"
lpadmin -p $nombrenuevo -E -v socket://$ipnueva -P /usr/share/ppd/cupsfilters/Generic-PDF_Printer-PDF.ppd 


   			echo "Impresora añadida con exito!" 

				lpoptions -d $nombrenuevo #ipnueva
                        echo "IP asignada como predeterminada" 

                        	service cups restart
                 	echo "Los CUPS se reiniciaron con exitos"

				lp -d  $nombrenuevo /usr/share/cups/data/testprint
                	echo "Enviando hoja de prueba"
				 lpq -a
			echo "las impresoras instaladas son:"
				lpstat -v | cut -c 17-61


#	fi
else
	echo "Solo root puede añadir impresoras"
	exit 2
fi
