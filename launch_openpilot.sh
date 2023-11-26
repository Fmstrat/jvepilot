#!/usr/bin/bash

sudo rm -rf /tmp/*  # make room for another run

export PASSIVE="0"
exec ./launch_chffrplus.sh

