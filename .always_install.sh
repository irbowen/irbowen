
sudo apt update

# Install the essentials!
sudo apt install vim git 

sudo apt install gcc clang
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev

sudo apt-get install python-pip python-dev
sudo pip install psutil thefuck


# Install pathogen and Vundle for vim, so that we can use plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Get Nerdtree up and running
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Get youcomplete me
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# You may still have to run PluginInstall in vim
echo "You may still need to run ':PluginInstall' within Vim"
