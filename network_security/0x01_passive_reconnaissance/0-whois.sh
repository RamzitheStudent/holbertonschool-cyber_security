#!/bin/bash
whois $1 | awk '/^Registrant/ || /^Admin/ || /^Tech/ {sub(/:[[:space:]]*$/, ":, "); sub(/: /, ", "); print}' > $1.csv
