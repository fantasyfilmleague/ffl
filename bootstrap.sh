#!/usr/bin/env bash

apt-get update
apt-get install -y python-software-properties

add-apt-repository ppa:chris-lea/node.js
add-apt-repository ppa:git-core/ppa

sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

sh -c 'echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list'
wget --quiet -O - http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | apt-key add -

apt-get update
apt-get install -y build-essential git nodejs postgresql-9.3 libpq-dev rabbitmq-server

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
