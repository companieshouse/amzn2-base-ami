# Testing amzn2-base-ami

Testing for this image has been set up using Vagrant due to the requirement to test plays that are not compatible with Docker hosted instances (e.g. SELinux, AV)

To test, run `vagrant up` from this directory. This will create a virtual machine based on Amazon Linux 2 and automatically run the Ansible provisioner.

To re-run tests, run `vagrant provision`

When finished, run `vagrant destroy`, which will destroy the currently running VM and cleanup.
