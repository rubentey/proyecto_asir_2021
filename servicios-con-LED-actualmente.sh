#!/bin/bash
# Comando que lista los servicios de LED creados

ls /etc/GPIO_LED_SH_PY/ | grep ".sh" | tr -s "." "-" | cut -d '-' -f 2,3
