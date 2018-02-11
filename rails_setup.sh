#/bin/bash

cd
sudo yum -y update
sudo yum -y install gcc gcc-c++ make bzip2 libyaml-devel libffi-devel zlib-devel openssl-devel readline-devel gdbm-devel ncurses-devel
sudo yum -y install libxml2 libxslt libxml2-devel libxslt-devel nginx sqlite sqlite-devel

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo '"export PATH=$HOME/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bash_profile
rbenv install 2.3.0
rbenv global 2.3.0
gem update
gem install bundler
gem install rails --version 5.0.1

