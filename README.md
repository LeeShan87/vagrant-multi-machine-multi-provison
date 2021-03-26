# About this project

At my work we working with many development environment. At point we realized we need some kind of easy to use tool for it.
We choose to use VirtualBox with Vagrant boxes. And start the provision with SaltStack.
Unfortunately new colleges had hard time to learn how Salt and Vagrant works. Some know Ansible, some Chef. Or nothing at all.
Switching form one provisioner to another is long and painful process.

In this project I tried to achieve how we can convert our development setup (which used Salt for provisioning and it's vagrant file was over 1000 lines long):

- to be a more understandable for new ones. (No fancy Vagrant magic)
- easier to modify when a new instance needed
- easier to use when a college knows some other provision tool
- easier to switch from Salt to Ansible without trashing our already working tools

## Prerequisites

- [VirtualBox](https://virtualbox.org/)
- [Vagrant](https://vagrantup.com/)
- [Git](https://git-scm.com/) - if you want to clone this project

# Setup

Copy src folder and do you magic :)

More information can be found in the [src](./src/Readme.md)
