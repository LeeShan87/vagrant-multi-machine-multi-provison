def init(config)
    config.vm.define :debian9, autostart: false do |minion_config|
        minion_config.vm.box = "bento/debian-9"
        minion_config.vm.host_name = "#{$project_config['box_hostname_prefix']}"+'debian9'
        minion_config.vm.network "private_network", ip: "1.2.3.39"
        minion_config.vm.provision :salt do |salt|
          salt.install_type = "stable"
          salt.run_highstate = true
          salt.masterless = true
          salt.colorize = true
          salt.bootstrap_options = "-P -c /tmp"
        end
      end
end