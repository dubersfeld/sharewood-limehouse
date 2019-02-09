#!/bin/bash

# Create a named volume

# From image sharewood/tokens-mysql to volume sharewood_tokens_db

sudo docker run --name tokens_create -d --rm --mount source=sharewood_tokens_db,target=/var/lib/mysql \
--env MYSQL_DATABASE=sharewood_tokens --env MYSQL_USER=dbuser --env MYSQL_PASSWORD=password1234 sharewood/tokens-mysql
