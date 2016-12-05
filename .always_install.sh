
# Get all of our packages up to date
sudo apt update

# Install the essentials, so we can actually do some work
sudo apt install vim git screen tmux byobu

# Compilers
sudo apt install gcc clang g++ build-essential cmake

# PHP Stuff
sudo apt install php5 php5-cli php5-common php5-json php5-readline
sudo apt install apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php5

# Setup composer - dependency/package manager for php
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'aa96f26c2b67226a324c27919f1eb05f21c248b987e6195cad9690d5c1ff713d53020a02ac8c217dbf90a7eacc9d141d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
# Move composer so that we can use it globally
sudo mv composer.phar /usr/local/bin/composer

# Python 
sudo apt install python-dev python3-dev python-pip python3-pip

# Cool tools
sudo pip install psutil thefuck mailmerge

# Trash-CLI, so we don't use rm or rm -rf and do something stupid
git clone https://github.com/andreafrancia/trash-cli.git
cd trash-cli
sudo python setup.py install

# Node and javascript
sudo apt install nodejs npm
# Let's you read markdown in a less clone
sudo npm install -g lessmd

# Install pathogen and Vundle for vim, so that we can use plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Get Nerdtree up and running
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround

# Get youcomplete me
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# You may still have to run PluginInstall in vim
echo "You may still need to run ':PluginInstall' within Vim"

vim +PluginInstall +qall
