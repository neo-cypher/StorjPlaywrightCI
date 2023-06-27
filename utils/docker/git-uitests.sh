#!/bin/bash
set -euo pipefail

# Disable safe.directory https://git-scm.com/docs/git-config#Documentation/git-config.txt-safedirectory,
# because we are running in containerized environment anyways.
git config --global --add safe.directory '*'
git clone https://github.com/storj/storj.git

cd storj/testsuite/playwright-ui/
npm install --prefer-offline --no-audit --logleve verbose
echo "module stub" > ./node_modules/go.mod # prevent Go from scanning this dir
# npx playwright install

npm install playwright-slack-report -D
npm install @slack/web-api @slack/socket-mode
