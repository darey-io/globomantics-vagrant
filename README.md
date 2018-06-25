# infrastructure Development using DEVOPS Technologies
This is one of those projects that I pick up myself when I am less busy. the goal is to use it as  opportunity to practice and touch on different technologies around automation and Devops.

## Disclaimer
The coding practice here is not entirely intended for production best practices. However, as I gain more free time, I will be be refactoring the code from time to time to embrace IAC best practices.

## Overview

In this particular project, I set up an infrastructure on my 128GB RAM HPz820 Server at home. My goal is to have a CI/CD pipeline for different use cases, and different software technologies.

## Setup:

Vagrant is used to create virtual machines, but I have wrapped up the provisioning with an Ansible playbook.

### To Boot Up the Infrastructure

- Ensure you already have Vagrant, VirtualBox, and Ansible installed on your host machine.

- clone this repository "Obviously"

``` git clone https://github.com/dareolu/vagrant.git ```

- Use your preferred IDE to do a find and replace inside vagrantup.yml and vagrantdestroy.yml. replace with the location you have cloned this repo on your computer. In my case, I am using cygwin on Windows.

''' /cygdrive/e/GIT/tmp/vagrant/k8s-cluster ```

- Run the playbook

```ansible-playbook vagrantup.yml```

# Naming Conventions for the servers

## Client/Utility
A Client/Utility server for remote management and administration

## Jenkins Server
CI/CD pipelines

## Kubernetes Cluster - I will be using kubernetes to deploy different applications and technologies, such as
- ELK stack
- Python app
- Java app
- Consul
- nginx
- Apache Web Server
- Mysql
- Redshift

## Consul Cluster
I use VMs for the Consul cluster. My desired configuration is to ultimately use kubernetes for consul. But for now, lets stick with the VMs.

## OS on all nodes:
- Distributor ID: Ubuntu
- Description:    Ubuntu 16.04.4 LTS
- Release:        16.04
- Codename:       xenial

## Notes:
- After first time logon to any of the servers with docker installed, you will need to run the below command
```su $USER```
