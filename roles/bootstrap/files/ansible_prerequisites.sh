#!/bin/sh

if [ ! -f /root/.ansible_prereqs_installed ]; then
  pacman --noconfirm -Syu python
  touch /root/.ansible_prereqs_installed
fi
