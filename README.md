tomcat-rpm
==========

Files for building Apache Tomcat 7.0.x source and binary RPM files

Usage
==========
mkdir -p BUILD
mkdir -p BUILDROOT
mkdir -p RPMS

rpmbuild -ba tomcat7.spec

Changes
==========
To update Tomcat version, change the version in tomcat7.spec and replace the .tar.gz with a matching version.
