#!/bin/sh

if [ ! -f /root/.ansible_prereqs_installed ]; then
  pacman --noconfirm -Syu python python-lxml
  touch /root/.ansible_prereqs_installed
fi
