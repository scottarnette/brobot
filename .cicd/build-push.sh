#!/bin/bash
set -eu pipefail

docker build -f ./docker/paper.Dockerfile -t scottarnette/server:latest .
