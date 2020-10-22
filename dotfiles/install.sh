#!/usr/bin/env zsh
# make zsh default shell
chsh -s $(which zsh)

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install exa curl wget htop cmake gcc llvm rename

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# move to dotfiles location
mv "$HOME/.oh-my-zsh" "$HOME/dotfiles/oh-my-zsh" 

# install antibody
brew install getantibody/tap/antibody
# run this when you want to update plugins
antibody bundle < ~/dotfiles/zsh_plugins.txt > ~/dotfiles/zsh_plugins.sh

# install p10k
p10k configure
# run again to install recommended nerd font
p10k configure
# don't let them override the .zshrc
mv .zshrc{.pre-oh-my-zsh,}

# neovim
brew install python neovim

# install VimPlug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# open vi and run :PlugInstall
# there will be an issue with youcompleteme. See after conda install.
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh > Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
rm Miniconda3-latest-MacOSX-x86_64.sh

# It has to be installed with non-conda python3 where both non-conda and conda pythons should have access to pynvim, 
# which can be checked by running import pynvim inside python3.
conda install pynvim -c conda-forge
conda deactivate
# pip3 should be installed as a part of the brew python, which is the python we will use here to install youcompleteme
pip3 install pynvim
python3 ~/.config/nvim/plugged/youcompleteme/install.py 
vi  # check that it works (there should be no error saying ycm shutdown)
conda activate  # go back to normal
vi # check that it also works here


# python
conda install numpy scipy scikit-learn pandas ipython biopython


# install R from https://cran.r-project.org/bin/macosx/
# install Rstudio from https://rstudio.com/products/rstudio/download/
# install X11 support from https://www.xquartz.org/ and restart laptop then
R
# there has been openMP (multi-process) issues with data.table which they blame on apple. It also wouldn't hurt to run "brew install libomp"
install.packages("data.table", type="source", repos="https://Rdatatable.gitlab.io/data.table")
install.packages(c("ggplot2", "Matrix", "tidyverse", "BiocManager", "optparse", "matrixTests"))
# from bioconductor
library(BiocManager)
install(c("DOSE", "fgsea"))  # Gene Set Enrichment Analysis

# java from openJDK which is an open replica of oracles corporate version
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

brew cask install dropbox openconnect
brew install miller

# activate the locate command
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

# git settings
git config --global pull.rebase false

# julia
brew cask install julia
julia -e 'using Pkg; Pkg.add(["ArgParse", "HypothesisTests"])'
