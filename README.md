# Configuration of my PCs running Arch linux using ansible

## Adding a new PC

* Create a host_vars file for the new PC
* Add it to `[laptop]`, `[desktop]` or `[only_confs]` in the `hosts` file
* Run `ansible-playbook --diff playbooks/config.yml -l <new_PC_hostname>`

## CI code sanity checks

* The CI checks the code using `ansible-lint` and `yaml-lint`
* The CI runs the ansible playbook inside a docker container to check for issues when running the playbook in an unconfigured environment
