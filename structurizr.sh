#!/usr/bin/env bash

usage () {
  echo "Start a docker container for viewing diagrams."
}

workspace="./workspace"

echo "Starting Structurizr with workspace in $workspace"

docker run --rm -it -p 8080:8080 -v "$(pwd)":/usr/local/structurizr -e STRUCTURIZR_WORKSPACE_PATH=$workspace structurizr/lite