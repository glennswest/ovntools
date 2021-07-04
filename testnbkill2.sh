while :
do
leadercnt=`./getnbleadercnt.sh`
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
./kill2nb.sh
sleep 60
date
./getnbroles.sh 
done
