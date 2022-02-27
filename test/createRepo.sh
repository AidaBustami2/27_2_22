#!/bin/bash

rm -rf /etc/yum.repos.d/test.repo || true
touch /etc/yum.repos.d/test.repo
var="[test]
name=test
baseurl=:file:///var/www/html
enabled=1
gpgcheck=0";
destdir=/etc/yum.repos.d/test.repo

if [ -f "$destdir" ]
then 
    echo "$var" > "$destdir"
fi


