#!/bin/bash
# /etc/GPIO_LED_SH_PY/LED-29-cups.sh

while true;
do
systemctl status cups.service | head -3 | tail -1 | grep "(running)" > /dev/null
	if [ $? = 0 ];
    then
        python /etc/GPIO_LED_SH_PY/LED-29-cups-on.py > /dev/null
        echo "LED 29 cups on - .sh"
    else
        python /etc/GPIO_LED_SH_PY/LED-29-cups-off.py > /dev/null
        echo "LED 29 cups off - .sh"
    fi
sleep 0.1
done
