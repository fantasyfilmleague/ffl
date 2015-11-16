#!/usr/bin/env bash

DATOMIC_VERSION=0.9.5327

export DEBIAN_FRONTEND=noninteractive

# Open JDK
add-apt-repository ppa:openjdk-r/ppa

apt-get update
apt-get upgrade -y

apt-get remove -y --purge openjdk*
apt-get install -y openjdk-8-jdk unzip

mkdir -p /home/vagrant/bin
curl -L -o /home/vagrant/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x /home/vagrant/bin/lein
sudo -H -u vagrant /home/vagrant/bin/lein

curl -L -o /tmp/datomic.zip "https://my.datomic.com/downloads/free/${DATOMIC_VERSION}"
unzip /tmp/datomic.zip -d /tmp
mv "/tmp/datomic-free-${DATOMIC_VERSION}" /opt/datomic
mkdir -p /opt/datomic/data

tee -a /etc/init/datomic.conf > /dev/null <<EOF
description "Datomic Free"

start on runlevel [2345]
stop on shutdown

script
exec /opt/datomic/bin/transactor /opt/datomic/config/samples/free-transactor-template.properties
end script
EOF
