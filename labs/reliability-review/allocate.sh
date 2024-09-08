#!/bin/bash
#
# Copyright (c) 2023 Red Hat Training <training@redhat.com>
#
# All rights reserved.
# No warranty, explicit or implied, provided.

oc exec deploy/longload -- curl -s localhost:3000/leak
