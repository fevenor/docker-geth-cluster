#!/bin/sh

sed -ie "s/\INSTANCE_NAME_TEMP/$HOSTNAME/" /root/processes.json
sed -ie "s/\CONTACT_DETAILS_TEMP/$CONTACT_DETAILS/" /root/processes.json

/usr/bin/pm2 start /root/processes.json
sleep 3
/geth $@
