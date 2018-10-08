#!/bin/sh

if [ ! -f /root/.ansible_prereqs_installed ]; then
  apt-get update && apt-get install -y python
  touch /root/.ansible_prereqs_installed
fi
