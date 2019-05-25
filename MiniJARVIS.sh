Menu(){
echo ---------------------------------------------------------------------
echo  "[1] Do you want to update your system, sir? "
 echo "[2] Sir, are you connected? "
 echo "[3] Do you want to see your memory usage? "
 echo "[4] Reboot, sir? (need root) "
 echo "[5] In what version am I? "
 echo "[6] Install or remove an app for you? "
 echo "[7] Date? "
 echo "[8] Do you want me to clean the terminal for you? "
 echo "[9] check commands?"
 echo "[10] Shutdown J.A.R.V.I.S.? "
echo ---------------------------------------------------------------------
 read choice
 case $choice in
1) Update ;;
2) Connection ;;
3) Memory ;;
4) Reboot ;;
5) Version ;;
6) App ;;
7) Date ;;
8) Clean ;;
9) Help ;;
10) exit ;;
11) Ipshow ;;
12) Say ;;
13) Shutdownpc ;;
14) Schedule ;;
15) Diet ;;
16) Changeds ;;
esac
}
Update(){
sudo apt-get update
sudo apt update
echo "UPDATE FINISHED!"
sudo apt-get upgrade
sudo apt upgrade
echo "UPGRADE FINISHED!"
 Menu
}
Connection(){
echo "I'm going to see if you're connected..."
ping google.com
 Menu
}
Memory(){
echo "Let me check your memory."
free
 Menu
}
Reboot(){
echo "I am going to reboot the system. See you later. "
reboot -f
Menu
}
Version(){
echo "I am in the Mini version. "
Menu
}
App(){
echo "Do you want to remove or install? 1 to install 2 to remove"
read choiceapp
if [ $choiceapp == 1 ]
then
 echo "What is the name of the app that you want to install: "
 read appname
 sudo apt-get install $appname
 elif [ $choiceapp == 2 ]
 then
 echo "What is the name of the app that you want to remove: "
 read AppName
 sudo apt-get remove $AppName
 else
 echo "You did not chose 1 or 2. "
 fi
 Menu
}
Date(){
echo "You are in:"
date
Menu
}
Clean(){
echo "Why it is always me. "
clear
Menu
}
Ipshow(){
echo "This is your ip, protect it. "
ifconfig
Menu
}
Help(){
echo "NEED TO UPGRADE"
Menu
}
Update(){
sudo apt-get update
echo "UPDATE FINISHED!"
sudo apt-get upgrade
echo "UPGRADE FINISHED!"
 Menu
}
Connection(){
echo "I'm going to see if you're connected..."
ping google.com
 Menu
}
Memory(){
echo "Let me check your memory."
free
 Menu
}
Reboot(){
echo "I am going to reboot the system. See you later. "
reboot -f
Menu
}
Version(){
echo "I am in the Mini version. "
Menu
}
Date(){
echo "You are in:"
date
Menu
}
Clean(){
echo "Why it is always me. "
clear
Menu
}
Ipshow(){
echo "This is your ip, protect it. "
ifconfig
Menu
}
Help(){
    echo "[1] Update"
    echo "[2] Connection"
    echo "[3] Memory usage"
    echo "[4] Reboot"
    echo "[5] J.A.R.V.I.S. version"
    echo "[6] Install or remove app"
    echo "[7] Date"
    echo "[8] Clean the terminal "
    echo "[9] Help"
    echo "[10] Shutdown J.A.R.V.I.S. "
    echo "[11] Show ip and internet configuration"
    echo "[12] Make J.A.R.V.I.S. say something"
    echo "[13] Shutdown computer"
    echo "[14] See your Schedule"
    echo "[15] See your diet"
    echo "[16] Change diet or schedule?"
    Menu
}
Say(){
echo "I will say what you want me to: "
read phrase
echo $phrase
Menu
}
Shutdownpc(){
echo "So you are going to leave? Ok sir. "
echo "In how many minutes do you want to shut it down? "
read Minutes
shutdown -h $Minutes
echo "ALERT, sir going off in $Minutes minutes. "
}
Schedule(){
#edit or show (put the if)
echo "Searching in: "
dir
echo "found it! here's your schedule "
cat Schedule
Menu
}
Diet(){
echo "That's your diet sir: "
cat Diet
Menu
}
Changeds(){
echo "Do you want to change your schedule or your diet archive, sir? 1 for schedule 2 for diet"
read choiceds
if [ $choiceds == 1 ]
then
  nano Schedule
elif [ $choiceds == 2 ]
then
nano Diet
else
  echo "you did not chose 1 ir 2. "
fi
Menu
}
Menu
