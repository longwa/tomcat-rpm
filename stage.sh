#!/bin/bash
if [ -z "$1" ]
  then
    echo "Usage: stage.sh <tomcat7 | tomcat8>" 
    exit 1
fi

set -e

rm -f RPMS/noarch/*.rpm

rpmbuild -ba $1.spec

cp -f RPMS/noarch/*.rpm /var/www/html/yum/

createrepo /var/www/html/yum
