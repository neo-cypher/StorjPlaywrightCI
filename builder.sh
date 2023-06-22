#!/bin/bash
set -euo pipefail

build.sh --amd64 jammy storjqa/playwrightci:latest
docker login
docker push storjqa/playwrightci:latest
