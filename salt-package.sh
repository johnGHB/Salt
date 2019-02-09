#!/bin/bash
# install rvm
#aptitude install -y curl
#curl -L https://get.rvm.io | bash -s stable --ruby
#source /usr/local/rvm/scripts/rvm
#gem install fpm
# create package
fpm -s dir \
    --description "Salt is an open source tool to manage your infrastructure." \
    --iteration 4+lenny \
    --provides salt-minion,salt-master \
    --post-install postinstall.sh \
    --pre-uninstall preuninstall.sh \
    -t deb \
    -n salt \
    -v 0.10.2 \
    /opt/salt
