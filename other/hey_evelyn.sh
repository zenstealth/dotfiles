echo 'Hey Evelyn!'
echo
sleep 2
echo "Ever since our date on 2019-04-10T22:35-05:00,"
echo
sleep 2
echo "I now think you're cooler than"
echo
sleep 2
echo "- robot arms & legs"
sleep 2
echo "- self driving tiny homes"
sleep 2
echo "- running macOS & windows virtualized on top of linux"
sleep 2
echo "- LED strips connected to Alexa via Arduinos and Raspberry Pis"
sleep 2
echo "- custom built mechanical keyboards"
sleep 2
echo "- and a whole bunch of other things!"
echo
sleep 4
echo "Even though we've only  known each other for approximately 24 hours,"
sleep 3

while true
do
 read -r -p "can I be your big tiddy cyborg goth gf? 😁 [Y/n] " input

 case $input in
     [yY][eE][sS]|[yY])
 echo "OMG YAY!"
 echo
 sleep 2
 echo "❤"
 echo
 sleep 2
 echo "❤"
 echo
 sleep 2
 echo "❤"
 exit 1
 ;;
     [nN][oO]|[nN])
 echo "T_T"
 exit 1
 ;;
     *)
 echo "Invalid input!"

 ;;
 esac
done
