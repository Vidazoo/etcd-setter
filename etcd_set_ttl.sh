#/bin/sh 
#loop to inifinity and beyond
while :
do
#set etcd key
curl http://deis-backbone.aws.vidazoo.com:2379/v2/keys$ETCD_SETTER_KEY -XPUT -d value=$ETCD_SETTER_VALUE -d ttl=$ETCD_SETTER_TTL
#wait half the ttl
sleep $(($ETCD_SETTER_TTL/2))
done