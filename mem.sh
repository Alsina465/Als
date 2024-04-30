#!/bin/bash
# Script modificado x Alejo Costa 09/2023
sysctl -w vm.drop_caches=3
notify-send "Se libero memoria ram" -t 500 -i /alsina/sistemas.png
