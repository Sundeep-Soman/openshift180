#!/bin/bash
#
# Copyright (c) 2023 Red Hat Training <training@redhat.com>
#
# All rights reserved.
# No warranty, explicit or implied, provided.

HOST=master01.ocp4.example.com
PORT=$(oc get service version -o jsonpath='{.spec.ports[0].nodePort}')

while :
do
	curl http://${HOST}:${PORT}
	sleep 0.5
done
