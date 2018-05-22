#!/usr/bin/env bash

go_dev_ip=ENV['GO_DEV_IP']
go_repository=ENV['GO_REPOSITORY']
go_dev_name=ENV['GO_DEV_NAME']

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.define "GoDev" do |devsvr|
    devsvr.vm.network "private_network", ip: "#{go_dev_ip}"
    devsvr.vm.hostname = "#{go_dev_name}"
    # devsvr.vm.network "forwarded_port", guest: 9090, host: 9090
    devsvr.vm.provision "shell", path: "go_init.sh"
    devsvr.vm.provision "shell", path: "go_vagrant_user.sh", args: "#{go_repository}", privileged: false
  end
end
