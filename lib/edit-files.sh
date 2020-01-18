
edit-menu() {
clear
    figlet File Manager
    echo -e "\e[0;36m-------------------------\e[0m \e[1;33mEdit Files\e[0m \e[0;36m-------------------------\e[0m"
    echo ""
    echo "1) Edit Handshakes"
    echo "2) Edit PMKIDs"
    echo "3) Edit Packets"
    echo "4) Edit Pasword Lists"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " INPUT
    if [ -z $INPUT ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    edit files
    elif [ $INPUT == 1 ]
    then
    edit-handshake
    elif [ $INPUT == 2 ]
    then
    edit-pmkid
    elif [ $INPUT == 3 ]
    then
    edit-packets
    elif [ $INPUT == 4 ]
    then
    edit-password
    elif [ $INPUT == 5 ]
    then
    main-choice-4
    else
    echo ""
    echo "Not an Option"
    sleep 2
    edit-menu
    fi
}

edit-handshake() {
    cd Handshake
    ls -1 | grep -v "temp.txt" > temp.txt
    mapfile -t FILE <temp.txt
    rm temp.txt
    cd ..
    show-results-1
    edit-handshake-action
}

show-results-1() {
    clear
    figlet Edit Handshakes
    echo -e "\e[0;36m--------------------------\e[0m \e[1;33mSelect a File to Edit\e[0m \e[0;36m-------------------------\e[0m"
    echo ""
    if [ ! -z ${FILE[20]} ]
    then
    echo -e "\e[1;31mWARNING:\e[0m Some files are not being displayed"
    echo ""
    fi
    if [ -z ${FILE[0]} ]
    then
    echo ""
    echo "No Files Found!"
    sleep 2
    main-choice-4
    else 
    echo "1) ${FILE[0]}"
    fi
    if [ ! -z ${FILE[1]} ]
    then
    echo "2) ${FILE[1]}"
    fi
    if [ ! -z ${FILE[2]} ]
    then
    echo "3) ${FILE[2]}"
    fi
    if [ ! -z ${FILE[3]} ]
    then
    echo "4) ${FILE[3]}"
    fi
    if [ ! -z ${FILE[4]} ]
    then
    echo "5) ${FILE[4]}"
    fi
    if [ ! -z ${FILE[5]} ]
    then
    echo "6) ${FILE[5]}"
    fi
    if [ ! -z ${FILE[6]} ]
    then
    echo "7) ${FILE[6]}"
    fi
    if [ ! -z ${FILE[7]} ]
    then
    echo "8) ${FILE[7]}"
    fi
    if [ ! -z ${FILE[8]} ]
    then
    echo "9) ${FILE[8]}"
    fi
    if [ ! -z ${FILE[9]} ]
    then
    echo "a) ${FILE[9]}"
    fi
    if [ ! -z ${FILE[10]} ]
    then
    echo "b) ${FILE[10]}"
    fi
    if [ ! -z ${FILE[11]} ]
    then
    echo "c) ${FILE[11]}"
    fi
    if [ ! -z ${FILE[12]} ]
    then
    echo "d) ${FILE[12]}"
    fi
    if [ ! -z ${FILE[13]} ]
    then
    echo "e) ${FILE[13]}"
    fi
    if [ ! -z ${FILE[14]} ]
    then
    echo "f) ${FILE[14]}"
    fi
    if [ ! -z ${FILE[15]} ]
    then
    echo "g) ${FILE[15]}"
    fi
    if [ ! -z ${FILE[16]} ]
    then
    echo "h) ${FILE[16]}"
    fi
    if [ ! -z ${FILE[17]} ]
    then
    echo "i) ${FILE[17]}"
    fi
    if [ ! -z ${FILE[18]} ]
    then
    echo "j) ${FILE[18]}"
    fi
    if [ ! -z ${FILE[19]} ]
    then
    echo "k) ${FILE[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SELECT1
    if [ -z $SELECT1 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-results-1

    elif [ $SELECT1 == 1 ]
    then
    CHOSEN_FILE=${FILE[0]}
    elif [ $SELECT1 == 2 ]
    then
    CHOSEN_FILE=${FILE[1]}
    elif [ $SELECT1 == 3 ]
    then
    CHOSEN_FILE=${FILE[2]}
    elif [ $SELECT1 == 4 ]
    then
    CHOSEN_FILE=${FILE[3]}
    elif [ $SELECT1 == 5 ]
    then
    CHOSEN_FILE=${FILE[4]}
    elif [ $SELECT1 == 6 ]
    then
    CHOSEN_FILE=${FILE[5]}
    elif [ $SELECT1 == 7 ]
    then
    CHOSEN_FILE=${FILE[6]}
    elif [ $SELECT1 == 8 ]
    then
    CHOSEN_FILE=${FILE[7]}
    elif [ $SELECT1 == 9 ]
    then
    CHOSEN_FILE=${FILE[8]}
    elif [ $SELECT1 == a ]
    then
    CHOSEN_FILE=${FILE[9]}
    elif [ $SELECT1 == b ]
    then
    CHOSEN_FILE=${FILE[10]}
    elif [ $SELECT1 == c ]
    then
    CHOSEN_FILE=${FILE[11]}
    elif [ $SELECT1 == d ]
    then
    CHOSEN_FILE=${FILE[12]}
    elif [ $SELECT1 == e ]
    then
    CHOSEN_FILE=${FILE[13]}
    elif [ $SELECT1 == f ]
    then
    CHOSEN_FILE=${FILE[14]}
    elif [ $SELECT1 == g ]
    then
    CHOSEN_FILE=${FILE[15]}
    elif [ $SELECT1 == h ]
    then
    CHOSEN_FILE=${FILE[16]}
    elif [ $SELECT1 == i ]
    then
    CHOSEN_FILE=${FILE[17]}
    elif [ $SELECT1 == j ]
    then
    CHOSEN_FILE=${FILE[18]}
    elif [ $SELECT1 == k ]
    then
    CHOSEN_FILE=${FILE[19]}
    elif [ $SELECT1 == 0 ]
    then
    main-choice-4
    
    elif [ $SELECT1 == 0 ]
    then
    main-choice-4

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-results-1
    fi

    if [ -z $CHOSEN_FILE ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-results-1
    fi
}

edit-handshake-action() {
    clear
    figlet Action
    echo ""
    echo -e "\e[0;36m---------\e[0m \e[1;33mChoose Action\e[0m \e[0;36m--------\e[0m"
    echo ""
    echo "1) Delete File"
    echo "2) Move File"
    echo "3) Copy File"
    echo "4) Rename File"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " ACTION1
    cd Handshake
    if [ -z $ACTION1 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    edit-handshake-action
    elif [ $ACTION1 == 1 ]
    then
    rm "$CHOSEN_FILE"
    cd ..
    echo ""
    echo "File has been deleted"
    sleep 2
    main-menu
    elif [ $ACTION1 == 2 ]
    then
    mv "$CHOSEN_FILE" ~
    cd ..
    echo "File has been moved to root directory"
    sleep 2
    main-menu
    elif [ $ACTION1 == 3 ]
    then
    cp "$CHOSEN_FILE" ~
    cd ..
    echo ""
    echo "File has been copied to root directory"
    sleep 2
    main-menu
    elif [ $ACTION1 == 4 ]
    then
    rename1() {
        clear
        echo ""
        read -p "Enter File Name: " NEWNAME
        if [ -z $NEWNAME ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        rename1
        else
        mv "$CHOSEN_FILE" "$NEWNAME"
        cd ..
        echo "File now named $NEWNAME"
        sleep 2
        main-menu
        fi
    }
    rename1
    elif [ $ACTION1 == 5 ]
    then
    show-results-1
    else 
    echo ""
    echo "Not an Option"
    sleep 2
    edit-handshake-action
    fi
}

edit-pmkid() {
    cd Handshake
    ls -1 | grep -v "temp.txt" > temp.txt
    mapfile -t FILE2 <temp.txt
    rm temp.txt
    cd ..
    show-results-2
    edit-pmkid-action
}

show-results-2() {
    clear
    figlet Edit PMKIDs
    echo -e "\e[0;36m----------------------\e[0m \e[1;33mSelect a F0ile to Edit\e[0m \e[0;36m---------------------\e[0m"
    echo ""
    if [ ! -z ${FILE[20]} ]
    then
    echo -e "\e[1;31mWARNING:\e[0m Some files are not being displayed"
    echo ""
    fi
    if [ -z ${FILE2[0]} ]
    then
    echo ""
    echo "No F0iles Found!"
    sleep 2
    main-choice-4
    else 
    echo "1) ${FILE2[0]}"
    fi
    if [ ! -z ${FILE2[1]} ]
    then
    echo "2) ${FILE2[1]}"
    fi
    if [ ! -z ${FILE2[2]} ]
    then
    echo "3) ${FILE2[2]}"
    fi
    if [ ! -z ${FILE2[3]} ]
    then
    echo "4) ${FILE2[3]}"
    fi
    if [ ! -z ${FILE2[4]} ]
    then
    echo "5) ${FILE2[4]}"
    fi
    if [ ! -z ${FILE2[5]} ]
    then
    echo "6) ${FILE2[5]}"
    fi
    if [ ! -z ${FILE2[6]} ]
    then
    echo "7) ${FILE2[6]}"
    fi
    if [ ! -z ${FILE2[7]} ]
    then
    echo "8) ${FILE2[7]}"
    fi
    if [ ! -z ${FILE2[8]} ]
    then
    echo "9) ${FILE2[8]}"
    fi
    if [ ! -z ${FILE2[9]} ]
    then
    echo "a) ${FILE2[9]}"
    fi
    if [ ! -z ${FILE2[10]} ]
    then
    echo "b) ${FILE2[10]}"
    fi
    if [ ! -z ${FILE2[11]} ]
    then
    echo "c) ${FILE2[11]}"
    fi
    if [ ! -z ${FILE2[12]} ]
    then
    echo "d) ${FILE2[12]}"
    fi
    if [ ! -z ${FILE2[13]} ]
    then
    echo "e) ${FILE2[13]}"
    fi
    if [ ! -z ${FILE2[14]} ]
    then
    echo "f) ${FILE2[14]}"
    fi
    if [ ! -z ${FILE2[15]} ]
    then
    echo "g) ${FILE2[15]}"
    fi
    if [ ! -z ${FILE2[16]} ]
    then
    echo "h) ${FILE2[16]}"
    fi
    if [ ! -z ${FILE2[17]} ]
    then
    echo "i) ${FILE2[17]}"
    fi
    if [ ! -z ${FILE2[18]} ]
    then
    echo "j) ${FILE2[18]}"
    fi
    if [ ! -z ${FILE2[19]} ]
    then
    echo "k) ${FILE2[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SELECT2
    if [ -z $SELECT2 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-results-2

    elif [ $SELECT2 == 1 ]
    then
    CHOSEN_FILE2=${FILE2[0]}
    elif [ $SELECT2 == 2 ]
    then
    CHOSEN_FILE2=${FILE2[1]}
    elif [ $SELECT2 == 3 ]
    then
    CHOSEN_FILE2=${FILE2[2]}
    elif [ $SELECT2 == 4 ]
    then
    CHOSEN_FILE2=${FILE2[3]}
    elif [ $SELECT2 == 5 ]
    then
    CHOSEN_FILE2=${FILE2[4]}
    elif [ $SELECT2 == 6 ]
    then
    CHOSEN_FILE2=${FILE2[5]}
    elif [ $SELECT2 == 7 ]
    then
    CHOSEN_FILE2=${FILE2[6]}
    elif [ $SELECT2 == 8 ]
    then
    CHOSEN_FILE2=${FILE2[7]}
    elif [ $SELECT2 == 9 ]
    then
    CHOSEN_FILE2=${FILE2[8]}
    elif [ $SELECT2 == a ]
    then
    CHOSEN_FILE2=${FILE2[9]}
    elif [ $SELECT2 == b ]
    then
    CHOSEN_FILE2=${FILE2[10]}
    elif [ $SELECT2 == c ]
    then
    CHOSEN_FILE2=${FILE2[11]}
    elif [ $SELECT2 == d ]
    then
    CHOSEN_FILE2=${FILE2[12]}
    elif [ $SELECT2 == e ]
    then
    CHOSEN_FILE2=${FILE2[13]}
    elif [ $SELECT2 == f ]
    then
    CHOSEN_FILE2=${FILE2[14]}
    elif [ $SELECT2 == g ]
    then
    CHOSEN_FILE2=${FILE2[15]}
    elif [ $SELECT2 == h ]
    then
    CHOSEN_FILE2=${FILE2[16]}
    elif [ $SELECT2 == i ]
    then
    CHOSEN_FILE2=${FILE2[17]}
    elif [ $SELECT2 == j ]
    then
    CHOSEN_FILE2=${FILE2[18]}
    elif [ $SELECT2 == k ]
    then
    CHOSEN_FILE2=${FILE2[19]}
    elif [ $SELECT2 == 0 ]
    then
    main-choice-4
    
    elif [ $SELECT2 == 0 ]
    then
    main-choice-4

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-results-2
    fi

    if [ -z $CHOSEN_FILE2 ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-results-2
    fi
}

edit-pmkid-action() {
    clear
    figlet Action
    echo ""
    echo -e "\e[0;36m---------\e[0m \e[1;33mChoose Action\e[0m \e[0;36m--------\e[0m"
    echo ""
    echo "1) Delete F0ile"
    echo "2) Move F0ile"
    echo "3) Copy F0ile"
    echo "4) Rename F0ile"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " ACTION2
    cd Handshake
    if [ -z $ACTION2 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    edit-pmkid-action
    elif [ $ACTION2 == 1 ]
    then
    rm "$CHOSEN_FILE2"
    cd ..
    echo ""
    echo "F0ile has been deleted"
    sleep 2
    main-menu
    elif [ $ACTION2 == 2 ]
    then
    mv "$CHOSEN_FILE2" ~
    cd ..
    echo "F0ile has been moved to root directory"
    sleep 2
    main-menu
    elif [ $ACTION2 == 3 ]
    then
    cp "$CHOSEN_FILE2" ~
    cd ..
    echo ""
    echo "F0ile has been copied to root directory"
    sleep 2
    main-menu
    elif [ $ACTION2 == 4 ]
    then
    rename2() {
        clear
        echo ""
        read -p "Enter F0ile Name: " NEWNAME
        if [ -z $NEWNAME ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        rename2
        else
        mv "$CHOSEN_FILE2" "$NEWNAME"
        cd ..
        echo "F0ile now named $NEWNAME"
        sleep 2
        main-menu
        fi
    }
    rename2
    elif [ $ACTION2 == 5 ]
    then
    show-results-2
    else 
    echo ""
    echo "Not an Option"
    sleep 2
    edit-pmkid-action
    fi
}

edit-packets() {
    cd Handshake
    ls -1 | grep -v "temp.txt" > temp.txt
    mapfile -t FILE3 <temp.txt
    rm temp.txt
    cd ..
    show-results-3
    edit-packets-action
}

show-results-3() {
    clear
    figlet Edit PMKIDs
    echo -e "\e[0;36m----------------------\e[0m \e[1;33mSelect a F0ile to Edit\e[0m \e[0;36m---------------------\e[0m"
    echo ""
    if [ ! -z ${FILE[20]} ]
    then
    echo -e "\e[1;31mWARNING:\e[0m Some files are not being displayed"
    echo ""
    fi
    if [ -z ${FILE3[0]} ]
    then
    echo ""
    echo "No F0iles Found!"
    sleep 2
    main-choice-4
    else 
    echo "1) ${FILE3[0]}"
    fi
    if [ ! -z ${FILE3[1]} ]
    then
    echo "2) ${FILE3[1]}"
    fi
    if [ ! -z ${FILE3[2]} ]
    then
    echo "3) ${FILE3[2]}"
    fi
    if [ ! -z ${FILE3[3]} ]
    then
    echo "4) ${FILE3[3]}"
    fi
    if [ ! -z ${FILE3[4]} ]
    then
    echo "5) ${FILE3[4]}"
    fi
    if [ ! -z ${FILE3[5]} ]
    then
    echo "6) ${FILE3[5]}"
    fi
    if [ ! -z ${FILE3[6]} ]
    then
    echo "7) ${FILE3[6]}"
    fi
    if [ ! -z ${FILE3[7]} ]
    then
    echo "8) ${FILE3[7]}"
    fi
    if [ ! -z ${FILE3[8]} ]
    then
    echo "9) ${FILE3[8]}"
    fi
    if [ ! -z ${FILE3[9]} ]
    then
    echo "a) ${FILE3[9]}"
    fi
    if [ ! -z ${FILE3[10]} ]
    then
    echo "b) ${FILE3[10]}"
    fi
    if [ ! -z ${FILE3[11]} ]
    then
    echo "c) ${FILE3[11]}"
    fi
    if [ ! -z ${FILE3[12]} ]
    then
    echo "d) ${FILE3[12]}"
    fi
    if [ ! -z ${FILE3[13]} ]
    then
    echo "e) ${FILE3[13]}"
    fi
    if [ ! -z ${FILE3[14]} ]
    then
    echo "f) ${FILE3[14]}"
    fi
    if [ ! -z ${FILE3[15]} ]
    then
    echo "g) ${FILE3[15]}"
    fi
    if [ ! -z ${FILE3[16]} ]
    then
    echo "h) ${FILE3[16]}"
    fi
    if [ ! -z ${FILE3[17]} ]
    then
    echo "i) ${FILE3[17]}"
    fi
    if [ ! -z ${FILE3[18]} ]
    then
    echo "j) ${FILE3[18]}"
    fi
    if [ ! -z ${FILE3[19]} ]
    then
    echo "k) ${FILE3[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SELECT3
    if [ -z $SELECT3 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-results-3

    elif [ $SELECT3 == 1 ]
    then
    CHOSEN_FILE3=${FILE3[0]}
    elif [ $SELECT3 == 2 ]
    then
    CHOSEN_FILE3=${FILE3[1]}
    elif [ $SELECT3 == 3 ]
    then
    CHOSEN_FILE3=${FILE3[2]}
    elif [ $SELECT3 == 4 ]
    then
    CHOSEN_FILE3=${FILE3[3]}
    elif [ $SELECT3 == 5 ]
    then
    CHOSEN_FILE3=${FILE3[4]}
    elif [ $SELECT3 == 6 ]
    then
    CHOSEN_FILE3=${FILE3[5]}
    elif [ $SELECT3 == 7 ]
    then
    CHOSEN_FILE3=${FILE3[6]}
    elif [ $SELECT3 == 8 ]
    then
    CHOSEN_FILE3=${FILE3[7]}
    elif [ $SELECT3 == 9 ]
    then
    CHOSEN_FILE3=${FILE3[8]}
    elif [ $SELECT3 == a ]
    then
    CHOSEN_FILE3=${FILE3[9]}
    elif [ $SELECT3 == b ]
    then
    CHOSEN_FILE3=${FILE3[10]}
    elif [ $SELECT3 == c ]
    then
    CHOSEN_FILE3=${FILE3[11]}
    elif [ $SELECT3 == d ]
    then
    CHOSEN_FILE3=${FILE3[12]}
    elif [ $SELECT3 == e ]
    then
    CHOSEN_FILE3=${FILE3[13]}
    elif [ $SELECT3 == f ]
    then
    CHOSEN_FILE3=${FILE3[14]}
    elif [ $SELECT3 == g ]
    then
    CHOSEN_FILE3=${FILE3[15]}
    elif [ $SELECT3 == h ]
    then
    CHOSEN_FILE3=${FILE3[16]}
    elif [ $SELECT3 == i ]
    then
    CHOSEN_FILE3=${FILE3[17]}
    elif [ $SELECT3 == j ]
    then
    CHOSEN_FILE3=${FILE3[18]}
    elif [ $SELECT3 == k ]
    then
    CHOSEN_FILE3=${FILE3[19]}
    elif [ $SELECT3 == 0 ]
    then
    main-choice-4
    
    elif [ $SELECT3 == 0 ]
    then
    main-choice-4

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-results-3
    fi

    if [ -z $CHOSEN_FILE3 ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-results-3
    fi
}

edit-packets-action() {
    clear
    figlet Action
    echo ""
    echo -e "\e[0;36m---------\e[0m \e[1;33mChoose Action\e[0m \e[0;36m--------\e[0m"
    echo ""
    echo "1) Delete F0ile"
    echo "2) Move F0ile"
    echo "3) Copy F0ile"
    echo "4) Rename F0ile"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " ACTION3
    cd Handshake
    if [ -z $ACTION3 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    edit-packets-action
    elif [ $ACTION3 == 1 ]
    then
    rm "$CHOSEN_FILE3"
    cd ..
    echo ""
    echo "F0ile has been deleted"
    sleep 2
    main-menu
    elif [ $ACTION3 == 2 ]
    then
    mv "$CHOSEN_FILE3" ~
    cd ..
    echo "F0ile has been moved to root directory"
    sleep 2
    main-menu
    elif [ $ACTION3 == 3 ]
    then
    cp "$CHOSEN_FILE3" ~
    cd ..
    echo ""
    echo "F0ile has been copied to root directory"
    sleep 2
    main-menu
    elif [ $ACTION3 == 4 ]
    then
    rename3() {
        clear
        echo ""
        read -p "Enter F0ile Name: " NEWNAME
        if [ -z $NEWNAME ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        rename3
        else
        mv "$CHOSEN_FILE3" "$NEWNAME"
        cd ..
        echo "F0ile now named $NEWNAME"
        sleep 2
        main-menu
        fi
    }
    rename3
    elif [ $ACTION3 == 5 ]
    then
    show-results-3
    else 
    echo ""
    echo "Not an Option"
    sleep 2
    edit-packets-action
    fi
}

edit-password() {
    cd Handshake
    ls -1 | grep -v "temp.txt" > temp.txt
    mapfile -t FILE4 <temp.txt
    rm temp.txt
    cd ..
    show-results-4
    edit-password-action
}

show-results-4() {
    clear
    figlet Edit PMKIDs
    echo -e "\e[0;36m----------------------\e[0m \e[1;33mSelect a F0ile to Edit\e[0m \e[0;36m---------------------\e[0m"
    echo ""
    if [ ! -z ${FILE[20]} ]
    then
    echo -e "\e[1;31mWARNING:\e[0m Some files are not being displayed"
    echo ""
    fi
    if [ -z ${FILE4[0]} ]
    then
    echo ""
    echo "No F0iles Found!"
    sleep 2
    main-choice-4
    else 
    echo "1) ${FILE4[0]}"
    fi
    if [ ! -z ${FILE4[1]} ]
    then
    echo "2) ${FILE4[1]}"
    fi
    if [ ! -z ${FILE4[2]} ]
    then
    echo "3) ${FILE4[2]}"
    fi
    if [ ! -z ${FILE4[3]} ]
    then
    echo "4) ${FILE4[3]}"
    fi
    if [ ! -z ${FILE4[4]} ]
    then
    echo "5) ${FILE4[4]}"
    fi
    if [ ! -z ${FILE4[5]} ]
    then
    echo "6) ${FILE4[5]}"
    fi
    if [ ! -z ${FILE4[6]} ]
    then
    echo "7) ${FILE4[6]}"
    fi
    if [ ! -z ${FILE4[7]} ]
    then
    echo "8) ${FILE4[7]}"
    fi
    if [ ! -z ${FILE4[8]} ]
    then
    echo "9) ${FILE4[8]}"
    fi
    if [ ! -z ${FILE4[9]} ]
    then
    echo "a) ${FILE4[9]}"
    fi
    if [ ! -z ${FILE4[10]} ]
    then
    echo "b) ${FILE4[10]}"
    fi
    if [ ! -z ${FILE4[11]} ]
    then
    echo "c) ${FILE4[11]}"
    fi
    if [ ! -z ${FILE4[12]} ]
    then
    echo "d) ${FILE4[12]}"
    fi
    if [ ! -z ${FILE4[13]} ]
    then
    echo "e) ${FILE4[13]}"
    fi
    if [ ! -z ${FILE4[14]} ]
    then
    echo "f) ${FILE4[14]}"
    fi
    if [ ! -z ${FILE4[15]} ]
    then
    echo "g) ${FILE4[15]}"
    fi
    if [ ! -z ${FILE4[16]} ]
    then
    echo "h) ${FILE4[16]}"
    fi
    if [ ! -z ${FILE4[17]} ]
    then
    echo "i) ${FILE4[17]}"
    fi
    if [ ! -z ${FILE4[18]} ]
    then
    echo "j) ${FILE4[18]}"
    fi
    if [ ! -z ${FILE4[19]} ]
    then
    echo "k) ${FILE4[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SELECT4
    if [ -z $SELECT4 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-results-4

    elif [ $SELECT4 == 1 ]
    then
    CHOSEN_FILE4=${FILE4[0]}
    elif [ $SELECT4 == 2 ]
    then
    CHOSEN_FILE4=${FILE4[1]}
    elif [ $SELECT4 == 3 ]
    then
    CHOSEN_FILE4=${FILE4[2]}
    elif [ $SELECT4 == 4 ]
    then
    CHOSEN_FILE4=${FILE4[3]}
    elif [ $SELECT4 == 5 ]
    then
    CHOSEN_FILE4=${FILE4[4]}
    elif [ $SELECT4 == 6 ]
    then
    CHOSEN_FILE4=${FILE4[5]}
    elif [ $SELECT4 == 7 ]
    then
    CHOSEN_FILE4=${FILE4[6]}
    elif [ $SELECT4 == 8 ]
    then
    CHOSEN_FILE4=${FILE4[7]}
    elif [ $SELECT4 == 9 ]
    then
    CHOSEN_FILE4=${FILE4[8]}
    elif [ $SELECT4 == a ]
    then
    CHOSEN_FILE4=${FILE4[9]}
    elif [ $SELECT4 == b ]
    then
    CHOSEN_FILE4=${FILE4[10]}
    elif [ $SELECT4 == c ]
    then
    CHOSEN_FILE4=${FILE4[11]}
    elif [ $SELECT4 == d ]
    then
    CHOSEN_FILE4=${FILE4[12]}
    elif [ $SELECT4 == e ]
    then
    CHOSEN_FILE4=${FILE4[13]}
    elif [ $SELECT4 == f ]
    then
    CHOSEN_FILE4=${FILE4[14]}
    elif [ $SELECT4 == g ]
    then
    CHOSEN_FILE4=${FILE4[15]}
    elif [ $SELECT4 == h ]
    then
    CHOSEN_FILE4=${FILE4[16]}
    elif [ $SELECT4 == i ]
    then
    CHOSEN_FILE4=${FILE4[17]}
    elif [ $SELECT4 == j ]
    then
    CHOSEN_FILE4=${FILE4[18]}
    elif [ $SELECT4 == k ]
    then
    CHOSEN_FILE4=${FILE4[19]}
    elif [ $SELECT4 == 0 ]
    then
    main-choice-4
    
    elif [ $SELECT4 == 0 ]
    then
    main-choice-4

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-results-4
    fi

    if [ -z $CHOSEN_FILE4 ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-results-4
    fi
}

edit-password-action() {
    clear
    figlet Action
    echo ""
    echo -e "\e[0;36m---------\e[0m \e[1;33mChoose Action\e[0m \e[0;36m--------\e[0m"
    echo ""
    echo "1) Delete F0ile"
    echo "2) Move F0ile"
    echo "3) Copy F0ile"
    echo "4) Rename F0ile"
    echo "5) Back"
    echo ""
    read -n 1 -p "Select Option: " ACTION4
    cd Handshake
    if [ -z $ACTION4 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    edit-password-action
    elif [ $ACTION4 == 1 ]
    then
    rm "$CHOSEN_FILE4"
    cd ..
    echo ""
    echo "F0ile has been deleted"
    sleep 2
    main-menu
    elif [ $ACTION4 == 2 ]
    then
    mv "$CHOSEN_FILE4" ~
    cd ..
    echo "F0ile has been moved to root directory"
    sleep 2
    main-menu
    elif [ $ACTION4 == 3 ]
    then
    cp "$CHOSEN_FILE4" ~
    cd ..
    echo ""
    echo "F0ile has been copied to root directory"
    sleep 2
    main-menu
    elif [ $ACTION4 == 4 ]
    then
    rename4() {
        clear
        echo ""
        read -p "Enter F0ile Name: " NEWNAME
        if [ -z $NEWNAME ]
        then
        echo ""
        echo "Cannot leave blank"
        sleep 2
        rename4
        else
        mv "$CHOSEN_FILE4" "$NEWNAME"
        cd ..
        echo "F0ile now named $NEWNAME"
        sleep 2
        main-menu
        fi
    }
    rename4
    elif [ $ACTION4 == 5 ]
    then
    show-results-4
    else 
    echo ""
    echo "Not an Option"
    sleep 2
    edit-password-action
    fi
}