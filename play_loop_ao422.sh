#!/usr/bin/env bash

UUT=${1:-acq1001_315}
while true; do
    for file in ao422_patterns/*; do
        cat $file
	sleep 1
    done
done | pv | nc $UUT 54207
