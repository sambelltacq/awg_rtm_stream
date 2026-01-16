#!/usr/bin/env bash

UUT=${1:-acq1001_315}
DELAY=${2:-1}
while true; do
    for file in ao422_patterns/*; do
        cat $file
	sleep $DELAY
    done
done | pv | nc $UUT 54207
