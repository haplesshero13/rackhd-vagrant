#!/bin/sh

vagrant plugin install vagrant-vsphere
tar cvzf dummy.box ./metadata.json
cp dummy.box deployments/dummy.box
