#!/bin/bash
whois "$1" | awk -F: '/Registrant|Admin|Tech/ {gsub(/^ +/,"",$2); print ($1~/Street/?$1","$2" ":$1~/Ext/?$1":,":$1","$2)}' > "$1.csv"
