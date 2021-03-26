def init(config)
   config.vm.define :centos7, autostart: false do |minion_config|
      minion_config.vm.box = "bento/centos-7"
      minion_config.vm.host_name = "#{$project_config['box_hostname_prefix']}"+'centos7'
      minion_config.vm.network "private_network", ip: "1.2.3.17"
      minion_config.vm.provision "ansible_local" do |ansible|
            ansible.playbook = "#{$ansible_dir}/playbook.yml"
      end
   end
end