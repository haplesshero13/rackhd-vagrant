# -*- mode: ruby -*-
# # vi: set ft=ruby :

# Specify minimum Vagrant version and Vagrant API version
Vagrant.require_version ">= 1.6.0"
VAGRANTFILE_API_VERSION = "2"

# Require YAML module
require 'yaml'

# Read YAML file with box details
deployment = YAML.load_file('deployment.yml')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'dummy'
  config.vm.box_url = './dummy.box'
  config.ssh.username = deployment['deployer']['username']
  config.ssh.password = deployment['deployer']['password']

  config.vm.provider :vsphere do |vsphere|
    vsphere.host = deployment['host']
    vsphere.compute_resource_name = deployment['compute_resource_name']
    vsphere.template_name = deployment['deployer']['template_name']
    vsphere.vm_base_path = deployment['vm_base_path']
    vsphere.name = deployment['deployer']['name']
    vsphere.user = deployment['vsphere_user']
    vsphere.password = deployment['vsphere_password']

    vsphere.insecure = deployment['insecure']
  end
end
