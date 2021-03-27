# Simple loader class, which help you with including Vagrant config blocks which are separeted in different rb (ruby) files.
# More information about it: https://www.vagrantup.com/docs/vagrantfile/version
#
# These file looks like:
# def init(config)
#    config.vm.define :default do |vm_config|
#		# here you can add your Vagrant virtual machine setup
#    end
# end
#
# Useage in your main Vagrantfile:
#
# Vagrant.configure("2") do |config|
# 	Dir[File.join(__dir__, 'instances', '*.rb')].each { |file|
# 		Loader::Instance.new(file, config)
# 	}
# end
#
#
class Loader
	class Instance
		def initialize(path, config)
		  @logger = Log4r::Logger.new('vagrant::loader/instance')
		  @logger.info("Simple loader loading path: #{path}")
		  @path = path
		  @config = config
		 load @path
		 send('init', config)
		end
	end
end
