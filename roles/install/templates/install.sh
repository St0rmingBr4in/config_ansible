#! /bin/sh

set -e

# Set the time zone
ln -sf /usr/share/zoneinfo/{{ timezone.region }}/{{ timezone.city }} /etc/localtime
hwclock --systohc

# Localization
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# Network configuration
echo "{{ ansible_hostname }}" > /etc/hostname
#hosts

# Initramfs
mkinitcpio -p linux

# Root password
usermod --password {{ user.password }} root

# Bootloader
bootctl --path=/boot install
# timeout
# entry
