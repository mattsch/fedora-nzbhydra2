#!/usr/bin/env bash

# Check our uid/gid, change if env variables require it
if [ "$( id -u nzbhydra2 )" -ne "${LUID}" ]; then
    usermod -o -u ${LUID} nzbhydra2
fi

if [ "$( id -g nzbhydra2 )" -ne "${LGID}" ]; then
    groupmod -o -g ${LGID} nzbhydra2
fi

# Temp workaround for https://github.com/theotherp/nzbhydra2/issues/188
touch /opt/nzbhydra2/readme.md

# Set permissions
chown -R nzbhydra2:nzbhydra2 /config/ /opt/nzbhydra2

exec runuser -l nzbhydra2 -c '/opt/nzbhydra2/nzbhydra2 --nobrowser --datafolder /config'
