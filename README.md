# infrastructure Development using DEVOPS Technologies

## Overview:
In this Vagrant project, I set up an infrastructure on my 128GB RAM HPz820 Server at home. My goal is to have a CI/CD pipeline for different use cases, and different software technologies.

## Setup:

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

