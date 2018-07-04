# Infrastructure Development - {Ansible, Vagrant}
This is one of those projects that I pick up when I am less busy. The goal is to use it as an opportunity to practice and touch on different technologies around automation and Devops.

This infrastructure is for a popular fictional company called Globomantics. The company embraces IAC practices and her private cloud is provisioned with one of Hashicorps tool-kit "Vagrant"

## Disclaimer
The coding practice here is not entirely intended for production best practices. However, as I gain more free time, I will be refactoring the code from time to time to embrace IAC best practices.

## Overview

In this particular project, I set up Globomantic's infrastructure on my 128GB RAM HPz820 Server at home (If you dont have a beefy system, its fine. Just tweak the ansible variable and adjust the guest VM's CPU and Memory sizes).

Part of what i intend to achieve is to have a CI/CD pipeline for all the company's applications, including the codified infrastructure. This approach allows me to practice different technologies. If you sometimes have spare time like me, and you are interested to work with me to improve this infrastructure, and also create more use cases, then by all means please reach out to me at dolufunmilayo@3xpoint.com. You can also have a look at the TODO.md file in this repository. Thats my little JIRA for task client. :)

## Setup:

Vagrant is used to create virtual machines, but I have wrapped up the provisioning with Ansible.

### To Boot Up the Infrastructure

- Ensure you already have Vagrant, VirtualBox, and Ansible installed on your host machine.

- clone this repository "Obviously"

``` git clone https://github.com/dareolu/globomantics-vagrant.git ```

- Have a look at the group_vars/all/vars.yml file and update it with the directory you want vagrant files to be created.

- Run the playbook

```ansible-playbook build-infrastructure.yml ```

- You can also destroy the infrastructure by providing extra variable to the command line

```ansible-playbook build-infrastructure.yml --extra-vars "destroy=yes"```

# Ansible roles

Each of the roles is tasked to build a Vagrantfile and provisioning shell scripts required to build and configure required servers.

## Client

Remote administration of the infrastructure and and job submissions will be done through the client nodes.
Also, the elasticsearch client service will be running on this node with "nginx" serving the reverse proxy to the "X" number of client nodes deployed.

## Jenkins
CI/CD pipelines

## Master Nodes

Several technologies have Master/Slave architecture. The Master nodes will be hosting such technologies that require a Master server. Such as those identified below. Because this is a development space, they will all share the same master. This will NEVER be the case in production.

- Elasticsearch Masters
- Consul Servers
- Kubernetes Masters
- Docker Swarm Masters


## Worker Nodes

Similar to above Master Nodes, the corresponding technologies that require worker nodes will be deployed to the "Worker Nodes"


## OS Linux Distribution on all nodes:

The current set up only supports below Linux distribution. In future release, we will dynamically support other Linux flavors

- Distributor ID: Ubuntu
- Description:    Ubuntu 16.04.4 LTS
- Release:        16.04
- Codename:       xenial

## Notes:
- After first time logon to any of the servers with docker installed, you will need to run the below command
```su $USER```
