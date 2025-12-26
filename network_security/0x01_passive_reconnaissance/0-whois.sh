#!/bin/bash
whois "$1" | awk '/Registrant|Admin|Tech/ && /(Name|Organization|Street|City|State|Postal|Country|Phone|Fax|Email):/ {sub(/:[[:space:]]*/,", "); print}' > "$1.csv"
