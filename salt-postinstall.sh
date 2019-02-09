#!/bin/bash
# link init scripts into /etc/init.d
ln -s /opt/salt/etc/salt-minion /etc/init.d/salt-minion
ln -s /opt/salt/etc/salt-master /etc/init.d/salt-master
# create the salt config directory
mkdir -p /etc/salt
