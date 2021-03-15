#!/bin/sh

sudo apt install sshpass  # only needed if using clear text passwords in inventory (bad practice- doing for this task only)
pip3 install docker
ansible-galaxy collection install community.docker

ansible-playbook playbook.yml -i inventory --ask-become-pass