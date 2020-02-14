[![Build Status](https://travis-ci.com/St0rmingBr4in/config_ansible.svg?branch=master)](https://travis-ci.com/St0rmingBr4in/config_ansible)

# Configuration of my PCs running Arch linux using ansible

## Adding a new PC

* Create a host_vars file for the new PC
* Add it to `[laptop]`, `[desktop]` or `[only_confs]` in the `hosts` file
* Run `ansible-playbook --diff playbooks/config.yml -l <new_PC_hostname>`

## Installing from USB live

You can run the playbook `playbooks/install.yml` from the live USB, it will install Arch linux with the following configuration:
* LVM on LUKS
* systemdboot as bootloader
* intel-ucode if applicable

## CI code sanity checks

* The CI checks the code using `ansible-lint` and `yaml-lint`
* The CI runs the ansible playbook inside a docker container to check for issues when running the playbook in an unconfigured environment
