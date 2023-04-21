#!/bin/bash

curl www.web_you_want_to_check.com > urls.txt
while TRUE; do
	sleep 300
	curl www.web_you_want_to_check.com > urls2.txt
	diff "urls.txt" "urls2.txt" > diferencia.txt
	if [ -s diferencia.txt ]; then
	        # The file is not-empty.
			echo "ALARM ALARM"
			python3 discord.py
			sleep 30
			python3 discord2.py
			cat urls2.txt > urls.txt
			now=$(date)
			echo "ALARM ALARM $now" >> history.txt
	else
	        # The file is empty.
			now=$(date)
			echo "No News $now" >> history.txt
	fi

done