#!/bin/bash

sudo service mysql start
sudo service ssh start

exec "$@"

