#!/usr/bin/env bash

echo ''
echo ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo '  Omeka Development Environment'
echo ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo '       Application: Omeka 3.0.2 Classic. '
echo '       OS: Ubuntu 20 LTS '
echo '       Updated April 15, 2022'
echo '       Notes: '
echo '       - This IS NOT intended for production but for development only '
echo '       - This is an insecure installation intended to run locally on your own workstation'
echo '       - For production you need to at the very least change the database username and passwords in db.ini'
echo '       - This was tested using Omeka 3.0.2 clasic. You could try it with another version as it might work. '
echo ' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

echo '** Starting post deploy  script**'

echo 'run apt update'
apt-get update

echo 'set hosts file. you do not need this but leaving it here in case you ever do need to set local hosts'
#echo -e '192.168.99.10\tmaster\tmaster\n' >> /etc/hosts
#echo -e '192.168.99.20\tnode\tnode\n' >> /etc/hosts

echo 'installing requirements'
apt-get install -y ca-certificates apt-transport-https software-properties-common dkms ntp

echo 'generate ssh keys to use for git if needed. you could comment this out if you dont need it'
ssh-keygen -y

echo 'set time zone'
timedatectl set-timezone America/Toronto

echo ' add ansible. you need this to run ansible to setup omeka '
apt update
apt install software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y

echo '** Done   **'

echo 'Now all you need to do is ssh into vagrant and run the ansibe playbook. Enter the following commands from the terminal.'
echo 'vagrant ssh '
echo 'cd work '
echo 'ansible-playbook site.yml '
echo 'once complete you need to open your web browser and go to http://127.0.0.1:8080/ '
echo 'setup your site and username and follow the Omeka docs on how to use this application'

# https://github.com/omeka/Omeka/releases/download/v3.0.2/omeka-3.0.2.zip
# https://github.com/omeka/omeka-s/releases/download/v3.1.2/omeka-s-3.1.2.zip

