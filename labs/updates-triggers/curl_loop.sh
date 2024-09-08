#!/bin/bash
#
# Copyright (c) 2023 Red Hat Training <training@redhat.com>
#
# All rights reserved.
# No warranty, explicit or implied, provided.

HOST=$(oc get route version -o jsonpath='{.spec.host}')

while :
do
	curl -m.5 -s -f http://${HOST}
	sleep 0.5
done
