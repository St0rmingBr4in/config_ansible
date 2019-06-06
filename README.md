# Configuration of my PCs running Arch linux using ansible

## In order to add a new PC:

* Create a host_vars file for the new PC
* Add it to `[laptop]`, `[desktop]` or `[only_confs]` in the `hosts` file
* Run `ansible-playbook --diff playbooks/config.yml -l <new_PC_hostname>`

## CI code sanity checks

* The code is checked using `ansible-lint` and `yaml-lint`
* The ansible playbook is run inside a docker container to check for issues when running the playbook in an unconfigured environment
