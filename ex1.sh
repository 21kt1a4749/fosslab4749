#addition of two numbers 
echo "enter two numbers"
read a b
res=`expr $a + $b`
echo "a=$a \n b=$b\t addition result =$res"
sub=`expr $a - $b`
echo "sub=$sub"
mul=`expr $a \* $b`
echo "mul=$mul"
div=`expr $a % $b`
echo "division=$div"
  



