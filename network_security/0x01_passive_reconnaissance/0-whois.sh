#!/bin/bash
whois "$1" | awk '/Registrant|Admin|Tech/ {if(match($0,/(Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone Ext:|Phone|Fax Ext:|Fax|Email):/)){sub(/:[[:space:]]*/,", ");print}}' > "$1.csv"
