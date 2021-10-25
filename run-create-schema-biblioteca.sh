#!/bin/bash
mysql -h 127.0.0.1 -P 3306 -u root -p --local-infile=1 --password=$SENHA < biblioteca-db-scripts/create-schema-biblioteca.sql
mysql -h 127.0.0.1 -P 3306 -u root -p --local-infile=1 --password=$SENHA < biblioteca-db-scripts/data-load-biblioteca.sql