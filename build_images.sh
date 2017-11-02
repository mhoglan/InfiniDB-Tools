#!/bin/bash

# Execute subshell, && operations so build does not execute if cd fails
(docker build -t mariadb-columnstore:base -f ./dockerfiles/mariadb-columnstore_base/Dockerfile --squash .)
#(docker build -t infinidb:base -f ./dockerfiles/infinidb_base/Dockerfile .)
#(docker build -t infinidb:4.6.0-1 ./dockerfiles/infinidb_4.6.0-1)
#(docker build -t infinidb:4.6.3-1 ./dockerfiles/infinidb_4.6.3-1 && docker tag infinidb:4.6.3-1 infinidb:latest)
#(docker build -t infinidb:data ./dockerfiles/infinidb_data)
