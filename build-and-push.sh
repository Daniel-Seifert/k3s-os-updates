#!/bin/bash

RELEASE_TAG=$1

duffle build -o bundle.json \
     && cnab-to-oci push bundle.json -t dseifert/k3s-os:${RELEASE_TAG} --auto-update-bundle