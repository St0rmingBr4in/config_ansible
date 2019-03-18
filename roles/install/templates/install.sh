#! /bin/sh

set -e

# Set the time zone
ln -sf /usr/share/zoneinfo/{{ timezone.region }}/{{ timezone.city }} /etc/localtime
hwclock --systohc

# Localization
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen #TODO: Move to ansible
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf #TODO: Move to ansible

# Network configuration
echo "{{ hostname }}" > /etc/hostname #TODO: Move to ansible
#hosts #TODO: Move to ansible

#/etc/mkinitcpio.conf

# Initramfs
mkinitcpio -p linux

# Root password
usermod --password {{ user.password }} root #TODO: make it work

# Bootloader
bootctl --path=/boot install
# timeout #TODO: Move to ansible
# entry #TODO: Move to ansible
