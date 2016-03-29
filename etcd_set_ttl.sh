#/bin/sh 
#loop to inifinity and beyond
while :
do
    #check vars are set
    if [ -n "$ETCD_SETTER_KEY" ]; then
        #set etcd key
        curl -s http://$ETCD_SERVER:$ETCD_PORT/v2/keys/autoscale/$ETCD_SETTER_KEY -XPUT -d value=$ETCD_SETTER_VALUE -d ttl=$ETCD_SETTER_TTL > /dev/null
        #wait half the ttl
        sleep $(($ETCD_SETTER_TTL/2))
    fi
done