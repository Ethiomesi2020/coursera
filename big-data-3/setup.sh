#!/bin/bash


sudo yum install -y postgresql-server

sudo service postgresql initb
sudo service postgresql start
sudo -u postgres psql -c "CREATE USER cloudera"
sudo -u postgres -c "ALTER USER cloudera with superuser"
sudo -u postgres createdb cloudera
psql -f init-postgres.sql

wget http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh
bash Anaconda3-4.0.0-Linux-x86_64.sh


