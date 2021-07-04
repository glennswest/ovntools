while :
do
leadercnt=`./getsbleadercnt.sh`
if [[ $leadercnt -gt 1 ]]
then 
    echo "More than 1 leader"
    exit
fi
if [[ $leadercnt -lt 1 ]]
then 
    echo "Less than 1 leader"
    exit
fi
./kill2sb.sh
sleep 60
date
./getsbroles.sh 
done
