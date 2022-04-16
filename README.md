# Omeka Development Environment for the Digital Humanities
An automated Omeka virtual development environment. This setup will install Omeka 3.0.2 Classic onto Ubuntu 20 LTS on your computer in a contained Vagrant virtual environment.

This has been tested on Windows but should work on Mac OS X  as well.

Requirements:
- [Hashi Corp Vagrant](https://www.vagrantup.com/downloads)

## How to use this

You first need to create a directory on your computer where the virtual machine and the Omeka project files will reside.

Download all the contents from the vagrant folder listed above and place them in the directory.

Create one additional folder called *data*. This folder will contain the files for your Omeka application.

- Install Vagrant
- Lauch a terminal window
- Navigate to the directory
- Type `vagrant up` and wait for the process to complete. It migth take a few minutes as it has to download Ubuntu and prepare the system in aa virtual environment.
- Once the process is complete, type `vagrant ssh`
- Type `cd work`
- Type `ansible-playbook site.yml`

Once the process is complete, you will have a complete Omeka installation on your computer which is contained within a Vagrant virtual instance. You can access the web application by opening a web browser and navigating to the URL http://127.0.0.1:8080

To shutdowm this vagrant instance when you are not using it
- Launch the terminal
- Navigate to the directory
- type `vagrant halt`

To turn on this vagrant instance
- Launch the terminal
- Navigate to the directory
- type `vagrant up`

To completely remove this vagrant instance
- Launch the terminal
- Navigate to the directory
- type `vagrant destroy`

Follw the documentation of the Omeka project on how to further use the application work on your Digital Humanities research project
- [Omeka Classic](https://omeka.org/classic/docs/)
- [Omeka S](https://omeka.org/s/docs/user-manual/)

