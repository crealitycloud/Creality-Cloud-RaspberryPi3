#!/bin/bash
logger "${0} started | ACTION: ${ACTION}"
prtSerial="prtSerial"
if [[ $ACTION == "add" ]]
then
	sudo systemctl restart creality_printer.service
	logger "${0} started | ACTION: ${ACTION}"
elif [[ $ACTION == "remove" ]]
then
	pid=$(ps -ef  | grep "$prtSerial" | grep -v grep | awk '{print $2}')
	if [ -n "$pid" ]; then
		kill -2 $pid
	fi
	logger "${0} started | ACTION: ${ACTION}"
fi
