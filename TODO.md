- Update Vagrant file - CIDIR for each Data Centre has to be different
- etchosts are not being populated dynamically
- Refactor the code base and remove all occurence of hardcoded values. (Centralize Variables only in group_vars)
- Build a graceful Tear down process of the infrastructure
- Make Ansible show the Vagrant Up in verbose
- Make Vagrant Up Idempotent
- Develop the single DC version of the infrastructure.(Give a condition in Ansible to accomodate single DC deployment) Currently I have developed China and London DCs
- Create a parker repository to build the image. This way we can remove the provisioning of Ansible, Consul, Kubectl and Docker
- Develop Unit tests for every Ansible role
- Update the Vagrant files with CPU/MEmory Variables in group_vars
- Document the code base with descriptive comments
- k8s-Nodes cannot scale more than 9-10 nodes due to how the CIDR is presented. (Need to be more scalable) - Check the Vagrantfile