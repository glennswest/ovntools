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
export leaderpod=`./getnbleaderpod.sh`
echo "Killing current master" $leaderpod
oc delete pod/$leaderpod --force --grace-period=0
sleep 20
./getnbroles.sh 
done
