#!/bin/bash

# Create a named volume

# From image sharewood/photos-mysql to volume sharewood_photos_db

sudo docker run --name photos_create -d --rm --mount source=sharewood_photos_db,target=/var/lib/mysql \
--env MYSQL_DATABASE=sharewood_photos --env MYSQL_USER=dbuser --env MYSQL_PASSWORD=password1234 sharewood/photos-mysql
