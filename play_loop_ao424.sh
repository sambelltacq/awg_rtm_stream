#!/usr/bin/env bash

UUT=${1:-acq1001_084}
DELAY=${2:-1}

while true; do
    for file in ao424_patterns/*; do
        cat $file
	sleep $DELAY
    done
done | pv | nc $UUT 54207
