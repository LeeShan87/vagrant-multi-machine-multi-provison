def init(config)
   config.vm.define :debian9, autostart: false do |minion_config|
      minion_config.vm.box = "bento/debian-9"
      minion_config.vm.host_name = "#{$project_config['box_hostname_prefix']}"+'default'
      minion_config.vm.network "private_network", ip: "1.2.3.29"
      minion_config.vm.provision "chef_solo" do |chef|
         chef.cookbooks_path = "#{$chef_dir}"
      end
   end
end