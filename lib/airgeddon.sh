install-airgeddon() {
    clear
    figlet Airgeddon
    echo ""
    echo "--------------------------------------------------------"
    echo ""
    echo "It seems that Airgeddon is not installed, or it is installed in another location" 
    echo "Either install it if it not installed, or move it to autoScript/Programs"
    echo ""
    read -p "Would you like to install it? (yes/no): " INSTALL
    if [ -z INSTALL ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    install-airgeddon
    elif [ $INSTALL == no ]
    then
    main-choice-4
    elif [ $INSTALL == yes ]
    then
    clear
    
    cd "$PERM_DIR"/Programs/
    git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
    cd airgeddon
    ./airgeddon.sh
    cd "$PERM_DIR"
    main-menu
    fi
}



airgeddon-check() {
    cd "$PERM_DIR"/Programs
    ls -1 > temp.txt
    CHECK=$(cat temp.txt | grep "airgeddon")
    rm temp.txt
    cd ..
    if [ -z $CHECK ]
    then
    install-airgeddon
    fi
}