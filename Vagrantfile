Vagrant.configure("2") do |config|
  config.vm.box = "jasonc/centos7"
  config.vm.define "test1" do |test1|
    test1.vm.hostname = "test1"
    test1.vm.network "private_network", ip: "10.9.8.5"
  end
  config.vm.define "test2" do |test2|
   test2.vm.hostname = "test2"
   test2.vm.network "private_network", ip: "10.9.8.6"
  end
end