#!/bin/bash
ln -s `pwd`/_vimrc ~/.vimrc
ln -s `pwd`/_tmux.conf ~/.tmux.conf

# Load git util tools
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
chmod a+x ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc
source ~/.bashrc
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
chmod a+x ~/.git-prompt.sh
echo "source ~/.git-prompt.sh" >> ~/.bashrc
echo "GIT_PS1_SHOWDIRTYSTATE=true" >> ~/.bashrc
source ~/.bashrc
