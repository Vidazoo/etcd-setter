#/bin/sh 
#loop to inifinity and beyond
while :
do
#set etcd key
curl http://$ETCD_server:$ETCD_port/v2/keys$ETCD_SETTER_KEY -XPUT -d value=$ETCD_SETTER_VALUE -d ttl=$ETCD_SETTER_TTL
#wait half the ttl
sleep $(($ETCD_SETTER_TTL/2))
done