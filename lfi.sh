#!/bin/bash



cyan='\e[36m'
GR='\e[34m'
OG='\e[92m'
WH='\e[37m'
RD='\e[31m'
YL='\e[33m'
BF='\e[34m'
DF='\e[39m'
OR='\e[93m'
PP='\e[91m'
B='\e[1m'
CC='\e[0m'

clear

printf "${PP}


                                                                                    

  _     _____ ___   ____   ____    _    _   _ _   _ _____ ____  
 | |   |  ___|_ _| / ___| / ___|  / \  | \ | | \ | | ____|  _ \ 
 | |   | |_   | |  \___ \| |     / _ \ |  \| |  \| |  _| | |_) |
 | |___|  _|  | |   ___) | |___ / ___ \| |\  | |\  | |___|  _ < 
 |_____|_|   |___| |____/ \____/_/   \_\_| \_|_| \_|_____|_| \_\
                                                                
	coded by AkM
	insta: 0x.akm

"


web=$1
echo enter your payload
read payload

while read -r line; do
    ch_vu=$(curl -s $web$line -L)
    if [[ $ch_vu =~ "/bin/bash" ]]; then
        printf "${OG}\nVULN"
        break
    else
        printf "${PP}\nNOT VULN"
    fi
done < "$payload"


