#!/bin/bash

DATE=$(date +%F)

docker exec mysql \
mysqldump -uroot -proot --all-databases \
> ../backup/mysql-$DATE.sql
