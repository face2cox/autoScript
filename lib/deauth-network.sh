show-scan-results-4() {
    clear
    figlet Deauth Network
    echo -e "\e[0;36m-------------------------\e[0m \e[1;33mChoose a Target Network\e[0m \e[0;36m--------------------------\e[0m"
    echo ""
    if [ -z ${NAME4[0]} ]
    then
    echo ""
    echo "No Networks Detected!"
    sleep 2
    main-choice-1
    else 
    echo "1)${NAME4[0]}"
    fi
    if [ ! -z ${NAME4[1]} ]
    then
    echo "2)${NAME4[1]}"
    fi
    if [ ! -z ${NAME4[2]} ]
    then
    echo "3)${NAME4[2]}"
    fi
    if [ ! -z ${NAME4[3]} ]
    then
    echo "4)${NAME4[3]}"
    fi
    if [ ! -z ${NAME4[4]} ]
    then
    echo "5)${NAME4[4]}"
    fi
    if [ ! -z ${NAME4[5]} ]
    then
    echo "6)${NAME4[5]}"
    fi
    if [ ! -z ${NAME4[6]} ]
    then
    echo "7)${NAME4[6]}"
    fi
    if [ ! -z ${NAME4[7]} ]
    then
    echo "8)${NAME4[7]}"
    fi
    if [ ! -z ${NAME4[8]} ]
    then
    echo "9)${NAME4[8]}"
    fi
    if [ ! -z ${NAME4[9]} ]
    then
    echo "a)${NAME4[9]}"
    fi
    if [ ! -z ${NAME4[10]} ]
    then
    echo "b)${NAME4[10]}"
    fi
    if [ ! -z ${NAME4[11]} ]
    then
    echo "c)${NAME4[11]}"
    fi
    if [ ! -z ${NAME4[12]} ]
    then
    echo "d)${NAME4[12]}"
    fi
    if [ ! -z ${NAME4[13]} ]
    then
    echo "e)${NAME4[13]}"
    fi
    if [ ! -z ${NAME4[14]} ]
    then
    echo "f)${NAME4[14]}"
    fi
    if [ ! -z ${NAME4[15]} ]
    then
    echo "g)${NAME4[15]}"
    fi
    if [ ! -z ${NAME4[16]} ]
    then
    echo "h)${NAME4[16]}"
    fi
    if [ ! -z ${NAME4[17]} ]
    then
    echo "i)${NAME4[17]}"
    fi
    if [ ! -z ${NAME4[18]} ]
    then
    echo "j)${NAME4[18]}"
    fi
    if [ ! -z ${NAME4[19]} ]
    then
    echo "k)${NAME4[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SCAN4
    if [ -z $SCAN4 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-scan-results-4

    elif [ $SCAN4 == 1 ]
    then
    CHOSEN_SCAN=${NAME4[0]}
    CHANNEL4=${CH4[0]}
    BSSID4=${BSS4[0]}
    elif [ $SCAN4 == 2 ]
    then
    CHOSEN_SCAN=${NAME4[1]}
    CHANNEL44=${CH4[1]}
    BSSID4=${BSS4[1]}
    elif [ $SCAN4 == 3 ]
    then
    CHOSEN_SCAN=${NAME4[2]}
    CHANNEL4=${CH4[2]}
    BSSID4=${BSS4[2]}
    elif [ $SCAN4 == 4 ]
    then
    CHOSEN_SCAN=${NAME4[3]}
    CHANNEL4=${CH4[3]}
    BSSID4=${BSS4[3]}
    elif [ $SCAN4 == 5 ]
    then
    CHOSEN_SCAN=${NAME4[4]}
    CHANNEL4=${CH4[4]}
    BSSID4=${BSS4[4]}
    elif [ $SCAN4 == 6 ]
    then
    CHOSEN_SCAN=${NAME4[5]}
    CHANNEL4=${CH4[5]}
    BSSID4=${BSS4[5]}
    elif [ $SCAN4 == 7 ]
    then
    CHOSEN_SCAN=${NAME4[6]}
    CHANNEL4=${CH4[6]}
    BSSID4=${BSS4[6]}
    elif [ $SCAN4 == 8 ]
    then
    CHOSEN_SCAN=${NAME4[7]}
    CHANNEL4=${CH4[7]}
    BSSID4=${BSS4[7]}
    elif [ $SCAN4 == 9 ]
    then
    CHOSEN_SCAN=${NAME4[8]}
    CHANNEL4=${CH4[8]}
    BSSID4=${BSS4[8]}
    elif [ $SCAN4 == a ]
    then
    CHOSEN_SCAN=${NAME4[9]}
    CHANNEL4=${CH4[9]}
    BSSID4=${BSS4[9]}
    elif [ $SCAN4 == b ]
    then
    CHOSEN_SCAN=${NAME4[10]}
    CHANNEL4=${CH4[10]}
    BSSID4=${BSS4[10]}
    elif [ $SCAN4 == c ]
    then
    CHOSEN_SCAN=${NAME4[11]}
    CHANNEL4=${CH4[11]}
    BSSID4=${BSS4[11]}
    elif [ $SCAN4 == d ]
    then
    CHOSEN_SCAN=${NAME4[12]}
    CHANNEL4=${CH4[12]}
    BSSID4=${BSS4[12]}
    elif [ $SCAN4 == e ]
    then
    CHOSEN_SCAN=${NAME4[13]}
    CHANNEL4=${CH4[13]}
    BSSID4=${BSS4[13]}
    elif [ $SCAN4 == f ]
    then
    CHOSEN_SCAN=${NAME4[14]}
    CHANNEL4=${CH4[14]}
    BSSID4=${BSS4[14]}
    elif [ $SCAN4 == g ]
    then
    CHOSEN_SCAN=${NAME4[15]}
    CHANNEL4=${CH4[15]}
    BSSID4=${BSS4[15]}
    elif [ $SCAN4 == h ]
    then
    CHOSEN_SCAN=${NAME4[16]}
    CHANNEL4=${CH4[16]}
    BSSID4=${BSS4[16]}
    elif [ $SCAN4 == i ]
    then
    CHOSEN_SCAN=${NAME4[17]}
    CHANNEL4=${CH4[17]}
    BSSID4=${BSS4[17]}
    elif [ $SCAN4 == j ]
    then
    CHOSEN_SCAN=${NAME4[18]}
    CHANNEL4=${CH4[18]}
    BSSID4=${BSS4[18]}
    elif [ $SCAN4 == k ]
    then
    CHOSEN_SCAN=${NAME4[19]}
    CHANNEL4=${CH4[19]}
    BSSID4=${BSS4[19]}
    elif [ $SCAN4 == 0 ]
    then
    rm temp.txt
    rm CHANNEL44.txt
    main-choice-1
    
    elif [ $SCAN4 == 0 ]
    then
    rm temp.txt
    rm CHANNEL44.txt
    main-choice-1

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-scan-results-4
    fi

    if [ -z $CHOSEN_SCAN ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-scan-results-4
    fi
}

network-scan-4() {
    airodump-ng -w temp1 --output-format csv "$INTERFACE"

    cat temp1-01.csv | grep "WPA2" > temp.txt
    cat temp.txt | cut -d',' -f14 > names.txt
    cat temp.txt | cut -d',' -f4 > CHANNEL4.txt
    cat temp.txt | cut -d',' -f1 > bssid.txt

    mapfile -t CH4 <CHANNEL4.txt
    mapfile -t NAME4 <names.txt
    mapfile -t BSS4 <bssid.txt

    rm names.txt
    rm temp1-01.csv
    rm bssid.txt
    rm CHANNEL4.txt
    rm temp.txt
    show-scan-results-4
}
