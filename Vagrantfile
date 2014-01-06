Vagrant.configure("2") do |config|
  config.ssh.forward_agent = true
  config.vm.synced_folder "./", "/vagrant", :disabled => true

  ### ec2_docker
  config.vm.define :ec2_docker do |target|
    target.vm.box = "dummy"
    target.ssh.username = "ubuntu"

    target.vm.provider :aws do |aws, override|
      aws.access_key_id = ENV["AWS_ACCESS_KEY_ID"]
      aws.secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
      aws.keypair_name = ENV["AWS_KEYPAIR_NAME"]
      override.ssh.private_key_path = ENV["AWS_PRIVATE_KEY_PATH"]

      aws.ami = "ami-f9327c90" # Ubuntu 13.04, us-east-1, 64bits, ebs root
      aws.instance_type = "m1.small"
      aws.region = "us-east-1"
      aws.tags = {"Name" => "ec2_docker"}
      aws.security_groups = ["admin-ssh"]
    end

    target.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end

  ### vbox_docker
  config.vm.define :vbox_docker do |target|
    # veewee-ubuntu-13.04 created using veewee
    # bundle exec veewee vbox define 'veewee-ubuntu-13.04' 'ubuntu-13.04-server-amd64'
    # bundle exec veewee vbox build 'veewee-ubuntu-13.04'
    # bundle exec veewee vbox export 'veewee-ubuntu-13.04'
    target.vm.box = "veewee-ubuntu-13.04"

    target.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end

    target.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end

end
