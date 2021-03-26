# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
   		vb.gui = true
			vb.cpus = 2
	    vb.customize ["modifyvm", :id, "--groups", "/#{$project_config['project_name']}/salt-solo"]
  end
  $salt_dir = "#{__dir__}/saltstack/"
   config.vm.synced_folder "#{$salt_dir}", "/srv/"
   if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  # config.vbguest.auto_update=false
  # Load box instances
  Dir[File.join(__dir__, 'instances', '*.rb')].each { |file|
		Loader::Instance.new(file, config)
  }
end