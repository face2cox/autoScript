source "lib/capture-pmkid.sh"
source "lib/capture-handshake.sh"
source "lib/crack-pmkid.sh"
source "lib/crack-handshake.sh"
source "lib/capture-packets.sh"
source "~/.bashrc"

capture-pmkid() {
    network-scan-1
    echo ""
    read -p "File name to save as: " FILE1
    echo ""
    echo "During Capture press "CTRL + C" to stop"
    read -n 1 -r -s -p "Press any button to begin capture..."
    clear
    hcxdumptool -i "$INTERFACE" -o "$FILE1".pcapng --enable_status=1 -c "$CHANNEL1"
    hcxpcaptool -E essidlist -I identitylist -U usernamelist -z "$FILE1".16800 "$FILE1".pcapng
    mv "$FILE1".pcapng PMKID
    mv "$FILE1".16800 PMKID
    rm -R identitylist
    rm -R essidlist
    sleep 1
    clear
    echo "PMKID File Saved"
    echo "File Converted"
    ifconfig "$INTERFACE" down
    iwconfig "$INTERFACE" mode managed
    ifconfig "$INTERFACE" up
    sleep 2
    main-choice-1
}
capture-handshake() {
    network-scan-2
    echo ""
    read -p "File name to save as: " FILE2
    echo ""
    echo "During Capture press "CTRL + C" to stop"
    read -n 1 -r -s -p "Press any button to begin capture..."
    airodump-ng -c$CHANNEL2 -w "$FILE2" -d "$BSSID2" "$INTERFACE"
    clear
    rm "$FILE2"-01.csv
    rm "$FILE2"-01.kismet.csv
    rm "$FILE2"-01.kismet.netxml
    rm "$FILE2"-01.log.csv
    mv "$FILE2"-01.cap Handshake/
    echo "Handshake File Saved"
    echo "Files cleaned"
    echo "File moved"
    ifconfig "$INTERFACE" down
    iwconfig "$INTERFACE" mode managed
    ifconfig "$INTERFACE" up
    sleep 1
    main-menu
}

crack-pmkid() {
    show-pmkids
    choose-list-2
    clear
    cd $PERM_DIR
    hashcat -m 16800 PMKID/$CHOSEN_PMKID -a 0 --kernel-accel=1 -w 3 --force Password-List/$SELECTED_LIST
    read -n 1 -r -s
    main-menu
}
crack-handshake() {
    choose-file-1
    choose-list-1
    clear
    aircrack-ng Handshake/$CHOSEN_FILE -w Password-List/$SELECTED_LIST
    read -n 1 -r -s
    main-choice-1
}
capture-packets() {
    network-scan-3
    echo ""
    read -p "File to save as: " FILE3
    clear
    airodump-ng --bssid $BSSID3 -c $CHANNEL3 -w $FILE3 $INTERFACE
    mv "$FILE3"-01.cap Captured-packets
    rm "$FILE3"-01.csv
    rm "$FILE3"-01.kismet.csv
    rm "$FILE3"-01.kismet.netxml
    rm "$FILE3"-01.log.csv
    ifconfig "$INTERFACE" down
    iwconfig "$INTERFACE" mode managed
    ifconfig "$INTERFACE" up
    wireshark-check
}
geolocate() {
    geoip() {
        clear
        figlet Gerolocate IP
        echo "------------------- Geolocate and IP Adress -------------------"
        echo ""
        echo -e "\e[1;31mWARNING:\e[0m If using a URL use "nslookup" to get IP"
        echo ""
        read -p "Enter Target IP: " IP
        if [ -z $IP ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        geoip
        else 
        echo ""
        curl https://api.hackertarget.com/geoip/?q="$IP"
        echo ""
        echo ""
        read -n 1 -r -s -p "Press any key to continue..."
        fi
    }
    geoip
    main-menu
}
nmap-scan() {
    nmap-error-check() {
        OPENPORT=$(cat temp.txt | grep "open")
        if [ -z $OPENPORT ]
        then
        echo "No Open Ports Found!"
        fi
    }
    nmap-function() {
        clear
        figlet nMap Scan
        echo "---------------- nMap Scan a Network ----------------"
        echo ""
        echo -e "\e[1;31mWARNING:\e[0m Remove "http" if using a URL"
        echo ""
        read -p "Enter Target IP: " IP
        if [ -z $IP ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        nmap-function
        else
        nmap "$IP" > temp.txt
        echo ""
        OPENPORT=$(cat temp.txt | grep "open")
        if [ -z $OPENPORT ]
        then
        echo "No Open Ports Found!"
        else
        cat temp.txt | grep "PORT"
        cat temp.txt | grep "open"
        fi
        echo ""
        rm temp.txt
        read -n 1 -r -s -p "Press any key to continue..."
        fi
    }
    nmap-function
    main-menu
}
local-scan() {
    coming-soon
}
ddos-ip() {
    coming-soon
}
ddos-website() {
    coming-soon
}
deauth-network() {
    coming-soon
}
deauth-device() {
    coming-soon
}
router-sploit() {
    coming-soon
}
airgeddon-void() {
    coming-soon
}
