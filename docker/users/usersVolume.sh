#!/bin/bash

# Create a named volume

# From image sharewood/users-mysql to volume sharewood_users_db

sudo docker run --name users_create -d --rm --mount source=sharewood_users_db,target=/var/lib/mysql \
--env MYSQL_DATABASE=sharewood_users --env MYSQL_USER=dbuser --env MYSQL_PASSWORD=password1234 sharewood/users-mysql
