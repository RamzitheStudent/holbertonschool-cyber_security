#!/bin/bash
subfinder -d "$1" -silent | while read subdomain; do host "$subdomain" | awk '/has address/ {print "'"$subdomain"',"$NF}'; done > "$1.txt"
