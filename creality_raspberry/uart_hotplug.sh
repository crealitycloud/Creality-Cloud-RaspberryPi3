#!/bin/bash

prtSerial="prtSerial"

pid=$(ps -ef  | grep "$prtSerial" | grep -v grep | awk '{print $2}')
if [ -n "$pid" ]; then
	    kill -9 $pid
fi

baudrate_arr=(115200 250000)
printer_couter=0
while [ $printer_couter -eq 0 ]
do

	printer=$(ls -rtl /dev/ | grep "ttyUSB" | grep -v grep | awk '{print $10}')
	#echo "$printer"
	if [ -n "$printer" ]; then
		for baudrate in ${baudrate_arr[@]}
		do
			sudo "$GenerateIdentifier"  -b $baudrate  -p /dev/"$printer" > /dev/null
			return_val=$?
			if [[ $return_val =~ 0 ]]
			then
				echo  The /dev/"$printer" was not printer Serial.
			else
				#$printer_cout=$((${printer_cout} + 1))
				printer_couter=1

			fi
		done
	fi
	if [[ $printer_couter -eq 0 ]]; then
		echo "3D Printer was not connected, please connected!"
		continue
	fi
done

sudo systemctl restart creality_printer.service
