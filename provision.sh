#!/usr/bin/env bash

#################################################################################
# Install and configure base
################################################################################

# Update packages list
sudo apt-get update

# Install build tools
apt-get install -y make g++ git curl vim libcairo2-dev libav-tools nfs-common portmap

# Install base packages (Git, Vim, terminal multiplexer and repository manager)
sudo apt-get install -y unzip git-core ack-grep vim tmux curl nano wget build-essential python-software-properties

# Symlink /var/www to project web root
#sudo rm -rf /var/www
#sudo ln -fs /vagrant/public /var/www


################################################################################
# Install generator-angular-fullstack and dependencies
################################################################################

# Get key and add to sources for MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list

# Update packages list
sudo apt-get update

# Install MongoDB
sudo apt-get -y install mongodb-org


#install node
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs


# Install generator-angular-fullstack
sudo npm install npm@latest -g yo generator-angular generator-angular-fullstack grunt grunt-cli gulp bower supervisor slush slush-y slush-meanjs
#sudo npm install -g yo generator-angular generator-angular-fullstack grunt grunt-cli gulp bower supervisor slush slush-y slush-meanjs

## Update Ruby gems and install compass
#gem update --system && gem install compass

echo ">>> Finished installing MEAN stack"
