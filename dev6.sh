#shellscript to show various syestem configurations
echo "\n1:currently logged user &his log name \n2:current shell \n3:home directory \n4:operating system type \n5:current path setting \n6:current working directory \n7:logged no.of users"

echo "choose option from 1 to 7"
read op 
case $op in   
    1) echo "current logged user is :-$USER"
       echo "log name is:-$LOGNAME"
       ;;
    2) echo "current shell is:- $SHELL"
       ;;
    3) echo "home directory is:-$HOME"
       ;;
    4) echo "operating system type & its version:-$(cat/proc/version)"
       ;;
    5) echo "current path setting is:-$PATH"
       ;;
    6) echo "current working directory is:-$PWD"
       ;;
    7) echo "currently logged number of user is:$WHO|wc -1"
       ;;
    *) echo "invalid option"
       ;;
esac


