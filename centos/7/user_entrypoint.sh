#!/bin/bash 

#[ -z ${HOST_GROUP_ID+x} ] || \
#[ -z ${HOST_USER_ID+x} ]  || \
#(
if [[ ! -z ${HOST_USER_ID+x} &&  ! -z ${HOST_GROUP_ID+x} ]] ; then
   groupadd -g $HOST_GROUP_ID -f user 
   useradd -m -s /bin/bash -u $HOST_USER_ID  -g $HOST_GROUP_ID user
   su -l user -c $@
   exit 0
#)
else
 exec $@
fi

