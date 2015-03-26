#!/bin/bash

# Remove images made from build
(docker rmi infinidb:4.6.0-1)
(docker rmi infinidb:4.6.3-1)
(docker rmi infinidb:latest)
(docker rmi infinidb:base)
(docker rmi infinidb:data)
