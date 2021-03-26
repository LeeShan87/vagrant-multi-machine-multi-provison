# SaltStack development environment

This repo help developers to have an up to date environment for development, with [SaltStack](https://www.saltstack.com/)

## Available hosts:

- default(CentOS 7, or your config setting)
- centos7
- debian9
- ubuntu18

## Adding new host to the available list

- Check if the new OS is supported by SaltStack on: https://docs.saltstack.com/en/latest/topics/installation/#platform-specific-installation-instructions
- Search for vagrant box for the given OS at: https://app.vagrantup.com/boxes/search (bento boxes are recommended)
- Update README.md with the new host


## Calling salt commands on minion

Almost every salt command can be called on the minion with:

```
salt-call --local <salt command>
```

Eg:

```
salt-call --local test.ping
salt-call --local cmd.run uptime
```

## Useful salt command:

- salt '\*' test.ping , Checks available minions.
- salt '\*' cmd.run 'echo "hello"' , Runs echo "hello" on every available minion, and returns their out put.

## More about salt

- Docs : [docs.saltstack.com](https://docs.saltstack.com/en/latest/)
- Formulas docs: [https://docs.saltstack.com/en/master/topics/development/conventions/formulas.html](https://docs.saltstack.com/en/master/topics/development/conventions/formulas.html)
- Formulas GitHub: [https://github.com/saltstack-formulas](https://github.com/saltstack-formulas)
