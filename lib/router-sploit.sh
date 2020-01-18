
install-routersploit() {
    clear
    figlet RouterSploit
    echo ""
    echo "-----------------------------------------------"
    echo ""
    eecho "It seems that RouterSploit is not installed, or it is installed in another location" 
    echo "Either install it if it not installed, or move it to autoScript/Programs"
    echo ""
    read -p "Would you like to install it? (yes/no): " INSTALL
    if [ -z INSTALL ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    install-routersploit
    elif [ $INSTALL == no ]
    then
    main-choice-4
    elif [ $INSTALL == yes ]
    then
    clear
    apt-get install python3-pip -y
    cd "$PERM_DIR"/Programs
    git clone https://www.github.com/threat9/routersploit
    cd routersploit
    python3 -m pip install -r requirements.txt
    clear
    python3 rsf.py
    cd "$PERM_DIR"
    main-menu
    fi
}

routersploit-check() {
    cd "$PERM_DIR"/Programs
    ls -1 > temp.txt
    CHECK=$(cat temp.txt | grep "routersploit")
    rm temp.txt
    cd ..
    if [ -z $CHECK ]
    then
    install-routersploit
    fi
}

