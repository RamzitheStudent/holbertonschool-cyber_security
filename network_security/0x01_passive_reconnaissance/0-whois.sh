#!/bin/bash
whois "$1" | awk -F: '/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email)/{gsub(/^ +/,"",$2); printf "%s, %s\n",$1,($1~/(Street)/?$2" ":$2)} END{print "Registrant Phone Ext:, \nRegistrant Fax, \nRegistrant Fax Ext:, \nAdmin Phone Ext:, \nAdmin Fax, \nAdmin Fax Ext:, \nTech Phone Ext:, \nTech Fax, \nTech Fax Ext:, "}' > "$1.csv"
