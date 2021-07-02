oc project openshift-ovn-kubernetes > /dev/null
export OVNMASTERPODS=`oc get pods | grep ovnkube-master | cut -d " " -f1`
export OVNMASTERHOSTS=`oc get pods -o wide | grep ovnkube-master | tr -s " " | cut -d " " -f7 `
for i in 1 2 3
do
  podname=`echo ${OVNMASTERPODS} | cut -d " " -f${i}`
  podhost=`echo ${OVNMASTERHOSTS} | cut -d " " -f${i}`
  electionvalue=`kubectl exec pod/$podname -c nbdb -- ovs-appctl -t /var/run/ovn/ovnnb_db.ctl cluster/status OVN_Northbound | grep Role | cut -d " " -f 2`
  echo "Killing "$podhost:$podname
  oc delete pod/$podname --force --grace-period=0
done

