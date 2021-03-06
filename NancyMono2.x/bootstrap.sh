#!/bin/bash
apt-get update
#apt-get upgrade
apt-get install -y mono-complete
apt-get install -y build-essential
apt-get install -y ruby1.9.3
gem install rake
gem install albacore --version "1.0.0.rc2"
cd /vagrant
echo cd \/vagrant > /home/vagrant/.bashrc
rm -rf /etc/motd

echo Nancy on Mono >> /etc/motd
echo +++++++++++++ >> /etc/motd
echo >> /etc/motd
echo The directory you are now in is shared with the host \(the same directory as you copied the vagrantfile into\) - on your local machine clone the source as you would normally then inside this VM type \"cd \[directory name\]\" then \"rake mono\" and observe the output. >> /etc/motd
