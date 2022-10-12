echo "enter option"
read op
case $op in
1) echo "os and version,release number,kernal version"
if   [ -f /etc/os-release ]
then
echo " os: "
cat /etc/os-release
fi
;;
2) echo " all avaiable shells " 
if  [ -f  /etc/shells ]
then
cat /etc/shells
fi
;;
3) echo "mouse settings"
xinput --list49
;;
4) echo "cpu information"
if [ -f  /proc/cpuinfo ]
then
cat /proc/cpuinfo
fi
;;
5) echo "memory information"
if [ -f /proc/meminfo ]
then
cat /proc/meminfo
fi
;;
6) echo `hard disk informtion`
echo "model: `cat /proc/ide/hide/model `"
echo "Driver: `cat /proc/ide/hide/driver `"
echo -e "Cache size: `cat/proc/ide/hide/cache`"
;;
7) echo "file system"
cat /proc/mounts
if which dialog>/dev/null
then
	dialog --backtitle"linux software diagnostics (lsd) shell script ver1.0"--title"pres up /down key to move"--textbox/tmp/info.temp.01.$$$ 21 70
else
	cat /temp/info.temp01.$$$ | mare
fi
rm-f /tmp/info.tmp.01$$$
;;
*) echo"enter vaild option only"
exit;;
esac

