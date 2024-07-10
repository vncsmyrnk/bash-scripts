#!/bin/bash

docker image ls | awk 'NR!=1 { print $3 }' | xargs -I {} docker image rm -f {}
exit 0
