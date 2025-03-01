#! /bin/bash
sudo apt-get update
yes | sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev postgresql libpq-dev
git clone https://github.com/excid3/asdf.git ~/.asdf
curl -L https://fly.io/install.sh | sh
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
echo 'legacy_version_file = yes' >> ~/.asdfrc
echo 'export EDITOR="code --wait"' >> ~/.bashrc
echo 'export FLYCTL_INSTALL="$HOME/.fly"' >> ~/.bashrc
echo 'export PATH="$FLYCTL_INSTALL/bin:$PATH"' >> ~/bashrc
source ~/.bashrc
source ~/.asdfrc
asdf plugin add ruby
asdf plugin add nodejs
asdf install ruby 3.3.5
asdf global ruby 3.3.5
gem update --system
asdf install nodejs 20.18.0
asdf global nodejs 20.18.0
npm install -g yarn
gem install rails -v 8.0.0.beta1
rails -v
ruby -v
node -v
yarn -v
exec $SHELL
