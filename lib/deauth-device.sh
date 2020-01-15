show-scan-results-5() {
    clear
    figlet Deauth Device
    echo -e "\e[0;36m-------------------\e[0m \e[1;33mChoose a Target Network\e[0m \e[0;36m--------------------\e[0m"
    echo ""
    if [ -z ${NAME5[0]} ]
    then
    echo ""
    echo "No Networks Detected!"
    sleep 2
    main-choice-3
    else 
    echo "1)${NAME5[0]}"
    fi
    if [ ! -z ${NAME5[1]} ]
    then
    echo "2)${NAME5[1]}"
    fi
    if [ ! -z ${NAME5[2]} ]
    then
    echo "3)${NAME5[2]}"
    fi
    if [ ! -z ${NAME5[3]} ]
    then
    echo "4)${NAME5[3]}"
    fi
    if [ ! -z ${NAME5[4]} ]
    then
    echo "5)${NAME5[4]}"
    fi
    if [ ! -z ${NAME5[5]} ]
    then
    echo "6)${NAME5[5]}"
    fi
    if [ ! -z ${NAME5[6]} ]
    then
    echo "7)${NAME5[6]}"
    fi
    if [ ! -z ${NAME5[7]} ]
    then
    echo "8)${NAME5[7]}"
    fi
    if [ ! -z ${NAME5[8]} ]
    then
    echo "9)${NAME5[8]}"
    fi
    if [ ! -z ${NAME5[9]} ]
    then
    echo "a)${NAME5[9]}"
    fi
    if [ ! -z ${NAME5[10]} ]
    then
    echo "b)${NAME5[10]}"
    fi
    if [ ! -z ${NAME5[11]} ]
    then
    echo "c)${NAME5[11]}"
    fi
    if [ ! -z ${NAME5[12]} ]
    then
    echo "d)${NAME5[12]}"
    fi
    if [ ! -z ${NAME5[13]} ]
    then
    echo "e)${NAME5[13]}"
    fi
    if [ ! -z ${NAME5[14]} ]
    then
    echo "f)${NAME5[14]}"
    fi
    if [ ! -z ${NAME5[15]} ]
    then
    echo "g)${NAME5[15]}"
    fi
    if [ ! -z ${NAME5[16]} ]
    then
    echo "h)${NAME5[16]}"
    fi
    if [ ! -z ${NAME5[17]} ]
    then
    echo "i)${NAME5[17]}"
    fi
    if [ ! -z ${NAME5[18]} ]
    then
    echo "j)${NAME5[18]}"
    fi
    if [ ! -z ${NAME5[19]} ]
    then
    echo "k)${NAME5[19]}"
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
    show-scan-results-5

    elif [ $SCAN4 == 1 ]
    then
    CHOSEN_SCAN=${NAME5[0]}
    CHANNEL5=${CH5[0]}
    BSSID5=${BSS5[0]}
    elif [ $SCAN4 == 2 ]
    then
    CHOSEN_SCAN=${NAME5[1]}
    CHANNEL54=${CH5[1]}
    BSSID5=${BSS5[1]}
    elif [ $SCAN4 == 3 ]
    then
    CHOSEN_SCAN=${NAME5[2]}
    CHANNEL5=${CH5[2]}
    BSSID5=${BSS5[2]}
    elif [ $SCAN4 == 4 ]
    then
    CHOSEN_SCAN=${NAME5[3]}
    CHANNEL5=${CH5[3]}
    BSSID5=${BSS5[3]}
    elif [ $SCAN4 == 5 ]
    then
    CHOSEN_SCAN=${NAME5[4]}
    CHANNEL5=${CH5[4]}
    BSSID5=${BSS5[4]}
    elif [ $SCAN4 == 6 ]
    then
    CHOSEN_SCAN=${NAME5[5]}
    CHANNEL5=${CH5[5]}
    BSSID5=${BSS5[5]}
    elif [ $SCAN4 == 7 ]
    then
    CHOSEN_SCAN=${NAME5[6]}
    CHANNEL5=${CH5[6]}
    BSSID5=${BSS5[6]}
    elif [ $SCAN4 == 8 ]
    then
    CHOSEN_SCAN=${NAME5[7]}
    CHANNEL5=${CH5[7]}
    BSSID5=${BSS5[7]}
    elif [ $SCAN4 == 9 ]
    then
    CHOSEN_SCAN=${NAME5[8]}
    CHANNEL5=${CH5[8]}
    BSSID5=${BSS5[8]}
    elif [ $SCAN4 == a ]
    then
    CHOSEN_SCAN=${NAME5[9]}
    CHANNEL5=${CH5[9]}
    BSSID5=${BSS5[9]}
    elif [ $SCAN4 == b ]
    then
    CHOSEN_SCAN=${NAME5[10]}
    CHANNEL5=${CH5[10]}
    BSSID5=${BSS5[10]}
    elif [ $SCAN4 == c ]
    then
    CHOSEN_SCAN=${NAME5[11]}
    CHANNEL5=${CH5[11]}
    BSSID5=${BSS5[11]}
    elif [ $SCAN4 == d ]
    then
    CHOSEN_SCAN=${NAME5[12]}
    CHANNEL5=${CH5[12]}
    BSSID5=${BSS5[12]}
    elif [ $SCAN4 == e ]
    then
    CHOSEN_SCAN=${NAME5[13]}
    CHANNEL5=${CH5[13]}
    BSSID5=${BSS5[13]}
    elif [ $SCAN4 == f ]
    then
    CHOSEN_SCAN=${NAME5[14]}
    CHANNEL5=${CH5[14]}
    BSSID5=${BSS5[14]}
    elif [ $SCAN4 == g ]
    then
    CHOSEN_SCAN=${NAME5[15]}
    CHANNEL5=${CH5[15]}
    BSSID5=${BSS5[15]}
    elif [ $SCAN4 == h ]
    then
    CHOSEN_SCAN=${NAME5[16]}
    CHANNEL5=${CH5[16]}
    BSSID5=${BSS5[16]}
    elif [ $SCAN4 == i ]
    then
    CHOSEN_SCAN=${NAME5[17]}
    CHANNEL5=${CH5[17]}
    BSSID5=${BSS5[17]}
    elif [ $SCAN4 == j ]
    then
    CHOSEN_SCAN=${NAME5[18]}
    CHANNEL5=${CH5[18]}
    BSSID5=${BSS5[18]}
    elif [ $SCAN4 == k ]
    then
    CHOSEN_SCAN=${NAME5[19]}
    CHANNEL5=${CH5[19]}
    BSSID5=${BSS5[19]}
    elif [ $SCAN4 == 0 ]
    then
    rm temp.txt
    rm CHANNEL54.txt
    main-choice-3
    
    elif [ $SCAN4 == 0 ]
    then
    rm temp.txt
    rm CHANNEL54.txt
    main-choice-3

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-scan-results-5
    fi

    if [ -z $CHOSEN_SCAN ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-scan-results-5
    fi
}

network-scan-5() {
    airodump-ng -w temp1 --output-format csv "$INTERFACE"

    cat temp1-01.csv | grep "WPA2" > temp.txt
    cat temp.txt | cut -d',' -f14 > names.txt
    cat temp.txt | cut -d',' -f4 > CHANNEL5.txt
    cat temp.txt | cut -d',' -f1 > bssid.txt

    mapfile -t CH5 <CHANNEL5.txt
    mapfile -t NAME5 <names.txt
    mapfile -t BSS5 <bssid.txt

    rm names.txt
    #rm temp1-01.csv
    rm bssid.txt
    rm CHANNEL5.txt
    rm temp.txt
    show-scan-results-5
}

device-scan() {
    clear
    #airodump-ng -c $CHANNEL5 -w temp1 --output-format csv --bssid $BSSID5 $INTERFACE
    cat temp1-01.csv | grep -v "WPA2" > temp.txt
    cat temp.txt | grep "$BSSID5" > temp2.txt
    cat temp2.txt | cut -d"," -f1 > temp.txt

    mapfile -t DEVICE <temp.txt

    rm temp1-01.csv
    rm temp.txt
    rm temp2.txt
}

choose-device() {
    clear
    figlet Deauth Device
    echo -e "\e[0;36m-------------------\e[0m \e[1;33mChoose a Target Device\e[0m \e[0;36m--------------------\e[0m"
    echo ""
    if [ -z ${DEVICE[0]} ]
    then
    echo "No Devices Detected!"
    sleep 2
    main-choice-3
    else 
    echo "1) ${DEVICE[0]}"
    fi
    if [ ! -z ${DEVICE[1]} ]
    then
    echo "2) ${DEVICE[1]}"
    fi
    if [ ! -z ${DEVICE[2]} ]
    then
    echo "3) ${DEVICE[2]}"
    fi
    if [ ! -z ${DEVICE[3]} ]
    then
    echo "4) ${DEVICE[3]}"
    fi
    if [ ! -z ${DEVICE[4]} ]
    then
    echo "5) ${DEVICE[4]}"
    fi
    if [ ! -z ${DEVICE[5]} ]
    then
    echo "6) ${DEVICE[5]}"
    fi
    if [ ! -z ${DEVICE[6]} ]
    then
    echo "7) ${DEVICE[6]}"
    fi
    if [ ! -z ${DEVICE[7]} ]
    then
    echo "8) ${DEVICE[7]}"
    fi
    if [ ! -z ${DEVICE[8]} ]
    then
    echo "9) ${DEVICE[8]}"
    fi
    if [ ! -z ${DEVICE[9]} ]
    then
    echo "a) ${DEVICE[9]}"
    fi
    if [ ! -z ${DEVICE[10]} ]
    then
    echo "b) ${DEVICE[10]}"
    fi
    if [ ! -z ${DEVICE[11]} ]
    then
    echo "c) ${DEVICE[11]}"
    fi
    if [ ! -z ${DEVICE[12]} ]
    then
    echo "d) ${DEVICE[12]}"
    fi
    if [ ! -z ${DEVICE[13]} ]
    then
    echo "e) ${DEVICE[13]}"
    fi
    if [ ! -z ${DEVICE[14]} ]
    then
    echo "f) ${DEVICE[14]}"
    fi
    if [ ! -z ${DEVICE[15]} ]
    then
    echo "g) ${DEVICE[15]}"
    fi
    if [ ! -z ${DEVICE[16]} ]
    then
    echo "h) ${DEVICE[16]}"
    fi
    if [ ! -z ${DEVICE[17]} ]
    then
    echo "i) ${DEVICE[17]}"
    fi
    if [ ! -z ${DEVICE[18]} ]
    then
    echo "j) ${DEVICE[18]}"
    fi
    if [ ! -z ${DEVICE[19]} ]
    then
    echo "k) ${DEVICE[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " DEVICESCAN
    if [ -z $DEVICESCAN ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    choose-device

    elif [ $DEVICESCAN == 1 ]
    then
    CHOSEN_DEVICE=${DEVICE[0]}
    elif [ $DEVICESCAN == 2 ]
    then
    CHOSEN_DEVICE=${DEVICE[1]}
    elif [ $DEVICESCAN == 3 ]
    then
    CHOSEN_DEVICE=${DEVICE[2]}
    elif [ $DEVICESCAN == 4 ]
    then
    CHOSEN_DEVICE=${DEVICE[3]}
    elif [ $DEVICESCAN == 5 ]
    then
    CHOSEN_DEVICE=${DEVICE[4]}
    elif [ $DEVICESCAN == 6 ]
    then
    CHOSEN_DEVICE=${DEVICE[5]}
    elif [ $DEVICESCAN == 7 ]
    then
    CHOSEN_DEVICE=${DEVICE[6]}
    elif [ $DEVICESCAN == 8 ]
    then
    CHOSEN_DEVICE=${DEVICE[7]}
    elif [ $DEVICESCAN == 9 ]
    then
    CHOSEN_DEVICE=${DEVICE[8]}
    elif [ $DEVICESCAN == a ]
    then
    CHOSEN_DEVICE=${DEVICE[9]}
    elif [ $DEVICESCAN == b ]
    then
    CHOSEN_DEVICE=${DEVICE[10]}
    elif [ $DEVICESCAN == c ]
    then
    CHOSEN_DEVICE=${DEVICE[11]}
    elif [ $DEVICESCAN == d ]
    then
    CHOSEN_DEVICE=${DEVICE[12]}
    elif [ $DEVICESCAN == e ]
    then
    CHOSEN_DEVICE=${DEVICE[13]}
    elif [ $DEVICESCAN == f ]
    then
    CHOSEN_DEVICE=${DEVICE[14]}
    elif [ $DEVICESCAN == g ]
    then
    CHOSEN_DEVICE=${DEVICE[15]}
    elif [ $DEVICESCAN == h ]
    then
    CHOSEN_DEVICE=${DEVICE[16]}
    elif [ $DEVICESCAN == i ]
    then
    CHOSEN_DEVICE=${DEVICE[17]}
    elif [ $DEVICESCAN == j ]
    then
    CHOSEN_DEVICE=${DEVICE[18]}
    elif [ $DEVICESCAN == k ]
    then
    CHOSEN_DEVICE=${DEVICE[19]}
    elif [ $DEVICESCAN == 0 ]
    then
    main-choice-3
    
    elif [ $DEVICESCAN == 0 ]
    then
    rm temp.txt
    main-choice-3

    else
    echo ""
    echo ""
    echo "Not and Option"
    choose-device
    fi

    if [ -z $CHOSEN_DEVICE ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    choose-device
    fi
}
