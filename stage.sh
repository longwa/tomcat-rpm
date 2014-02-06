#!/bin/bash
set -e

rm -f RPMS/noarch/*.rpm

rpmbuild -ba tomcat7.spec

cp -f RPMS/noarch/*.rpm /var/www/html/yum/

createrepo /var/www/html/yum
