Vagrant.configure(2) do |config|
  # config.omnibus.chef_version = :latest
  # config.berkshelf.enabled = false
  config.vm.define :webdb do |webdb|
    webdb.vm.hostname = 'webdb'
    webdb.vm.box = 'bento/ubuntu-16.04'
    webdb.vm.network 'forwarded_port', guest: 8080, host: 8080
    webdb.vm.network 'private_network', ip: '192.168.33.80'
  end

end
