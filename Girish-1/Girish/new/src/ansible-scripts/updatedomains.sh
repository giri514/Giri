#!/bin/bash
file="/root/domains.txt"
while IFS= read -r line
do
    /usr/local/psa/bin/domain --update $line -ip 0.0.0.0
done <"$file"
