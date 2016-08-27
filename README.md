# vagrant-pastec

Build a virtual machine with [Pastec](http://pastec.io/).

It uses Vagrant that must be installed first.
download it from [vagrant](https://www.vagrantup.com/)

one virtualization software compatible with vagrant must be installed.

This project has been tested with[ VM VirtualBox](https://www.virtualbox.org/) works well.

This project has been inspired by the following project [docker-pastec](https://github.com/Emsu/docker-pastec)

# How to
build the VM

    mkdir vagrant-pastec
    git clone https://github.com/sbrocard/vagrant-pastec.git
    cd vagrant-pastec
    vagrant up
    
The last command can take a while, be patient.
Then, run Pastec serveur

    ./pastec.sh
or

    pastec.bat
or

    vagrant ssh -c "pastec /pastec/visualWordsORB.dat"
    
Then pastec server can be used as described in the [Pastec documentation](http://pastec.io/doc/oss/)
