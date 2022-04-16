# omeka-dev-site
An automated Omeka development environment

This project uses Vagrnat and Ansible to setup a development environment on your workstation

This has been tested on Windows but should work on Mac OS X. 

Requirements:
- [Hashi Corp Vagrant](https://www.vagrantup.com/downloads)

## How to use this

Create a directory on your computer

Download all the contents from the vagrant folder and place them in the directory

Create one additional folder called *data*. This folder will contain the files of your Omeka application

- Install Vagrant
- Lauch a terminal window
- type `vagrant up`
- Once complete, type `vagrant ssh`
- type `cd work`
- type `ansible-playbook site.yml`

Once the process is complete, you will have a Omeka installtion on your computer contained within a Vagrant instance. You can access the web application by navigating to the URL http://127.0.0.1:8080

