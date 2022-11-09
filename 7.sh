''' shell script to implement a script which kills every process which uses more than a specified value of memory 
or cpu and is run upon system start'''
while [ 1 ]
do
echo "checking for run-away process ..."
CPU_USAGE=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
CPU_USAGE_THRESHOLD=4
PROCESS=$( ps aux r)
TOPPROCESS=$(ps -eo pid -eo pcpu -eo command|sort -k 2 -r|grep -v PID|head -n 1)
if [ $CPU_USAGE -gt $CPU_USAGE_THRESHOLD ]
then
kill -9 $(ps -eo pid|sort -k 1 -r|grep -v PID|head -n 1)
kill -9 $TOPPROCESS
echo "system overloading!"
echo "Top-most process killed $TOPPROCESS"
echo "CPU USAGE is at $CPU_USSGE"
else
echo "no process is killed"
fi
exit 0
sleep 1;
done

