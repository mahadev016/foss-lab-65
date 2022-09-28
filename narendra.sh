echo "enter two numbers:"
read a b
echo "a-addition |n s-subtraction |n m-multiplication |n d-division r-reminder"
echo "enter your option"
read op
case $op in
	a)res1=`expr $a+$b`
	echo"result of addition is $res1"
	;;
	s)res2=`expr $a-$b`
	echo"result of subtraction is $res2"
	;;
	m)res3=`expr $a|*$b`
	echo"result of multiplication is $res3"
	;;
	d)res4=`expr $a|$b`
	echo"result of division is $re4"
	;;
	r)res5=`expr $a%$b`
	echo"result of remainder is $res5"
	;;
	*)
	echo"wrong opyion"
	;;
esac
 	
