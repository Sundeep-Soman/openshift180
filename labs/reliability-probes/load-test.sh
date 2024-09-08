#!/bin/sh
while true
do
  curl long-load-reliability-probes.apps.ocp4.example.com/health
  sleep 2s
done
