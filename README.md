# etcd-setter
sets an etcd key-value with ttl and ensures keeping it while the container is running

required values:
ETCD_SETTER_KEY=key name
ETCD_SETTER_VALUE=key value
ETCD_SETTER_TTL=number of seconds for ttl, must be devidable by 2

every ETCD_SETTER_TTL/2 the container will update ETCD to keep the values existing until it is stopped or the server hosting it dies.
this is usuful for creating etcd groups which can then be qureied to get a list of IP's of servers in an autoscaling group.
docker image is based on alpine linux because it's so damn small.