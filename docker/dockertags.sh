#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "Usage: ./dockertags.sh [repository-name]"
	exit 1
fi

curl https://registry.hub.docker.com/v2/repositories/library/$1/tags/ | jq '."results"[]["name"]'
