aptitude install -y libssl-dev libyaml-dev swig uuid-dev libz-dev
wget http://python.org/ftp/python/2.7.3/Python-2.7.3.tgz
tar -xzvf Python-2.7.3.tgz 
cd Python-2.7.3
./configure --prefix=/opt/salt
make
make install
cd ..
wget http://download.zeromq.org/zeromq-2.2.0.tar.gz
tar -xzvf zeromq-2.2.0.tar.gz 
cd zeromq-2.2.0
./configure --prefix=/opt/salt --with-pgm
make
make install
cd ..
wget http://pypi.python.org/packages/source/s/setuptools/setuptools-0.6c11.tar.gz
tar -xzvf setuptools-0.6c11.tar.gz 
cd setuptools-0.6c11
/opt/salt/bin/python setup.py install
cd ..
wget http://pypi.python.org/packages/source/p/pip/pip-1.1.tar.gz
tar -xzvf pip-1.1.tar.gz 
cd pip-1.1
/opt/salt/bin/python setup.py install
cd ..
/opt/salt/bin/pip install pyzmq --install="--zmq=/opt/salt"
/opt/salt/bin/pip install salt
mkdir -p /opt/salt/etc/
cp etc/salt-master /opt/salt/etc/salt-master
cp etc/salt-minion /opt/salt/etc/salt-minion
