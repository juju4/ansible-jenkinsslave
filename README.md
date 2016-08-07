[![Build Status](https://travis-ci.org/juju4/ansible-jenkinsslave.svg?branch=master)](https://travis-ci.org/juju4/ansible-jenkinsslave)
# Jenkins Slave ansible role

Ansible role to setup Jenkins Slave
It will set up ssh key connection between slave and master.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0

### Operating systems

Tested with vagrant on Ubuntu 14.04, Kitchen test with trusty and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - jenkinsslave
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/jenkinsslave
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/jenkinsslave/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

