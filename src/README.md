# Development environment

This repo helps developers to have an up to date environment for development

# Setup

Copy config.yaml.example as config.yaml and add your preferences.

In the configuration file you can add:

- Your public ssh key for root login to boxes
- Your can choose your provisioner. Eg SaltStack (default), or Ansible, or Chef
- Your default box to use. If not set CentOS 7 will be used.
- Your project name
- You can add host name prefix to your boxes

vagrant up

# Available hosts:

Detailed information and limitations about available host, should be listed in the provisioners Readme.md's

- default(CentOS 7, or your config setting)
- centos7
- debian9
- ubuntu18

You can add more any time coping one of the instances and modify it to your need.

# Provisioner

- [SaltStack](./provision/salt/Readme.md), default
- [Ansible](./provision/ansible/Readme.md)
- [Chef](./provision/chef/Readme.md)
