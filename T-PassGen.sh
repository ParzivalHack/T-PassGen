blue="\e[34m"
cyan="\e[36m"
echo -e "$blue"
toilet T-PassGen
echo -e "$blue                        ➡$cyan [\e[36m1\e[36m] Generate password with md5sum (32)"
echo -e "$blue                        ➡$cyan [\e[36m2\e[36m] Generate alphanumeric password (16)"
echo -e "$blue                        ➡$cyan [\e[36m3\e[36m] About me"
echo -e "$blue                        ➡$cyan [\e[36m4\e[36m] Update script "
echo -e "$blue                        ➡$cyan [\e[36m5\e[36m] Check out my VPN"
echo -e "$blue                        ➡$cyan [\e[36m6\e[36m] Report issues"
echo -e "$blue                        ➡$cyan [\e[36m7\e[36m] Exit"
echo -e "$blue               >＞＞＞＞＞$cyan [SELECT]$blue ＜＜＜＜＜<$blue"
echo " "
echo -ne "\e[34m#SELECT OPTION\e[34m: "
read optnz
if [ $optnz = "1" ];
then
echo $RANDOM | md5sum | head -c 32;
elif [ $optnz = "2" ];
then
choose() { echo ${1:RANDOM%${#1}:1}; }

{
    choose '!@#$%^\&'
    choose '0123456789'
    choose 'abcdefghijklmnopqrstuvwxyz'
    choose 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    for i in $( seq 1 $(( 4 + RANDOM % 8 )) )
    do
        choose '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    done
} | sort -R | tr -d '\n'
echo ""
elif [ $optnz = "3" ];
then
am start -a android.intent.action.VIEW -d https://portosaurus.github.io/TommasoBona/ > /dev/null 2>&1
banner
elif [ $optnz = "4" ];
then
upd
elif [ $optnz = "5" ];
then
am start -a android.intent.action.VIEW -d https://whispervpn.company.site > /dev/null 2>&1
banner
elif [ $optnz = "6" ];
then
am start -a android.intent.action.VIEW -d https://github.com/ParzivalHack/T-Search/issues > /dev/null 2>&1
banner
elif [ $optnz = "7" ];
then
exit 1
else
echo "wrong"
exit
fi
upd() {
if [ -d "$HOME/T-PassGen" ];
then
cd $HOME
rm -rf T-Search
elif [ -d "$HOME/T-PassGen" ];
then
cd $HOME
rm -rf T-Search
else
echo
exit 1
fi
cd $HOME
sleep 1
echo -e "         \e[34mUPDATE IS GOING ON, PLEASE BE PATIENT...!\e[0m"
echo
printf "                     \e[34m["
# While process is running...
while git clone https://github.com/ParzivalHack/T-PassGen 2> /dev/null; do 
    printf  "\e[34m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[34m]\e[0m"
echo
echo
echo
printf "\e[34m           UPDATED SUCCESSFULLY TO THE LATEST VERSION!\e[0m"
sleep 2.0
clear
cd $HOME
cd T-PassGen
bash T-PassGen.sh
}
vid(){
FILE=$HOME/T-
if [ -f "$FILE" ]; then
pop
else
echo
fi
}
pop(){
clear
read p
if [ "$p" = "y" ];
then
am start -a android.intent.action.VIEW -d ERROR000 2>/dev/null
clear
baner1
menu
elif [ "$p" = "t" ];
then
clear
baner1
menu
elif [ "$p" = "z" ];
then
cd $HOMW/T-PassGen
rm noob.noob
banner
else
banner
exit
fi
}
