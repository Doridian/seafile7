#!/bin/sh
exec 2>&1
exec /usr/bin/mysqladmin --defaults-file=/var/lib/mysql/dotmy.cnf shutdown
