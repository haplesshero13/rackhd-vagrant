#!/bin/sh

vagrant ssh -c 'cd /vagrant/deployment; vagrant destroy'
vagrant destroy
