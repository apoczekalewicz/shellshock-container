FROM registry.access.redhat.com/rhscl/httpd-24-rhel7:2.4-147

USER 0

COPY files/app.cgi /opt/rh/httpd24/root/var/www/cgi-bin
COPY files/bash-4.2.45-5.el7.x86_64.rpm /tmp
COPY files/sudo-1.8.6p7-20.el7.x86_64.rpm /tmp

RUN rpm -ivh --force /tmp/bash-4.2.45-5.el7.x86_64.rpm &&\
    rpm -ivh --force /tmp/sudo-1.8.6p7-20.el7.x86_64.rpm &&\
    chmod +x /opt/rh/httpd24/root/var/www/cgi-bin/app.cgi &&\ 
    echo "apache ALL=(ALL, !root) NOPASSWD:ALL" >> /etc/sudoers.d/apache



