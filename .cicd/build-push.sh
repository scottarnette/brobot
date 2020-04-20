#!/bin/bash
set -eo pipefail

docker build -f ./docker/paper.Dockerfile -t scottarnette/server:latest .
