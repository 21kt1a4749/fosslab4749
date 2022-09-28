#shell script to show various system configurations
while [ 1 ]
do
echo "\n1.currently loged user and his log name\n2.current shell\n3.home directory\n4.operating system type\n5.current path settings 6.current working direcctory\n7.currently logged number of users "
echo " enter option from 1 to 7 "
read op
case $op in
 1) echo " current logged user : $USER "
    echo " logged name : $LOGNAME "
    ;;
 2)echo " current shell: $SHELL "
    ;;
 3)echo " home directory : $HOME "
    ;;
 4) echo " operating system and version : " 
     cat /proc/version 
    ;;
 5) echo "current path settings : $PATH "
    ;;
 6) echo  " current working directory : $PWD "
    ;;
 7) echo " currently logged number of users: who|wc -l"
    ;;
 8) exit;;    
    *)echo " invalid option"
    ;;
esac
done

