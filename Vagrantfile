
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.define "GoDev" do |devsvr|
    devsvr.vm.network "private_network", ip: ENV['GO_DEV_IP']
    devsvr.vm.hostname = ENV['GO_DEV_NAME']
    devsvr.vm.network "forwarded_port", guest: ENV['GO_GUEST_PORT'], host: ENV['GO_HOST_PORT']
    devsvr.vm.provision "shell", path: "go_init.sh"
    devsvr.vm.provision "shell", path: "go_vagrant_user.sh", env: {GO_REPOSITORY:ENV['GO_REPOSITORY']}, privileged: false
  end
end
