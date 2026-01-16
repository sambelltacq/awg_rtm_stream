#!/usr/bin/env bash

UUT=${1:-acq1001_084}

while true; do
    for file in ao424_patterns/*; do
        cat $file
	sleep 1
    done
done | pv | nc $UUT 54207
