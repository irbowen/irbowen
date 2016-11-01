
# Get all of our packages up to date
sudo apt update

# Install the essentials!
sudo apt install vim git 

# Compilers
sudo apt install gcc clang g++ build-essential cmake

# Python 
sudo apt install python-dev python3-dev python-pip python3-pip

# Cool tools
sudo pip install psutil thefuck

# Trash-CLI, so we don't use rm or rm -rf and do somethign stupid
git clone https://github.com/andreafrancia/trash-cli.git
cd trash-cli
sudo python setup.py install

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

vim +PluginInstall +qall
