#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/geerlingguy.java ] && git clone https://github.com/geerlingguy/ansible-role-java.git $rolesdir/geerlingguy.java
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.jenkinsslave ] && ln -s ansible-jenkinsslave $rolesdir/juju4.jenkinsslave
[ ! -e $rolesdir/juju4.jenkinsslave ] && cp -R $rolesdir/ansible-jenkinsslave $rolesdir/juju4.jenkinsslave

## don't stop build on this script return code
true

