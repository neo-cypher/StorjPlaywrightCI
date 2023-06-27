#!/bin/bash
set -euo pipefail

utils/docker/build.sh --amd64 jammy storjqa/playwrightci:latest
docker login
docker push storjqa/playwrightci:latest
