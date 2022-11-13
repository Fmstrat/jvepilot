#!/usr/bin/env bash

git diff > /tmp/comma.patch
ssh comma 'cd /data/openpilot; git reset'
scp /tmp/comma.patch comma:/tmp/comma.patch
ssh comma 'cd /data/openpilot; git apply /tmp/comma.patch'