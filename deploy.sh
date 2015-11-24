#!/bin/sh

vagrant up --provider=vsphere
vagrant ssh -c 'cd /vagrant/deployment; vagrant up'
