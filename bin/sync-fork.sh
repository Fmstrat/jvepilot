#!/usr/bin/env bash

UPSTREAM="https://github.com/j-vanetten/openpilot.git"

set -e
if [ -z "$(git remote -v |grep upstream)" ]; then
    set -x
    git remote add upstream ${UPSTREAM}
    { set +x; } 2>/dev/null
fi
set -x
git fetch upstream
git checkout jvePilot-release
git merge upstream/jvePilot-release
git push
{ set +x; } 2>/dev/null