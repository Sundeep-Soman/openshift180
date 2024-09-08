#!/bin/sh
while true
do
  curl long-load-reliability-ha.apps.ocp4.example.com/health
  sleep 2s
done
