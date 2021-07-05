#!/usr/bin/env zsh
# git settings
git config --global pull.rebase false
git clone git@github.com:degnbol/mac-dotfiles.git dotfiles

# make zsh default shell
chsh -s $(which zsh)

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install exa curl wget htop cmake gcc llvm rename gsed

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
rm ~/.zshrc
# symlink our own
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/gitconfig .gitconfig
ln -s ~/dotfiles/Renviron ~/.Renviron
ln -s ~/dotfiles/R ~/.R
# we are also setting XDG_CONFIG_HOME in zshrc to the dotfiles location so I'm just being careful in case any configed tool doesn't respect the XDG variable
ln -s ~/dotfiles/config ~/.config

# neovim
# --HEAD for development version instead of stable necessary for some lua config
brew install --HEAD luajit
brew install --HEAD neovim
brew install npm # install npm for :LspInstall python that install python support for Lsp. 

# install nerdfont
curl -sS https://webinstall.dev/nerdfont | bash
# install fonts with ligatures. Adding -nerd-font means they are "patched" i.e. versions made by the nerd font people to include all the extra symbols
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font font-jetbrains-mono-nerd-font font-victor-mono-nerd-font
# open rstudio and select fira code as font in appearance settings
# open pycharm -> settings -> editor -> font -> select font and enable ligatures
# open vs code -> install synthwave '84, then cmd + shift + p -> enable neon dream, then symlink settings from here
ln -s ~/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json


# Youcompleteme has to be installed with non-conda python3 where both non-conda and conda pythons should have access to pynvim, 
# which can be checked by running import pynvim inside python3.
conda install pynvim -c conda-forge
conda deactivate
# pip3 should be installed as a part of the brew python, which is the python we will use here to install youcompleteme
pip3 install pynvim
python3 ~/.config/nvim/plugged/youcompleteme/install.py 
# for every new conda env you have to write conda install pynvim to get it to work for that new env


# python
conda install numpy scipy scikit-learn pandas ipython biopython


# install R from https://cran.r-project.org/bin/macosx/
# install Rstudio from https://rstudio.com/products/rstudio/download/
# install X11 support from https://www.xquartz.org/ and restart laptop then
R -e '
# there has been openMP (multi-process) issues with data.table which they blame on apple. It also wouldnt hurt to run "brew install libomp"
install.packages("data.table", type="source", repos="https://Rdatatable.gitlab.io/data.table")
install.packages(c("ggplot2", "Matrix", "tidyverse", "BiocManager", "optparse", "matrixTests"), repos="https://mirrors.dotsrc.org/cran/")
install.packages("languageserver", repos="https://mirrors.dotsrc.org/cran/") # for nvim lsp
# from bioconductor
library(BiocManager)
install(c("DOSE", "fgsea"))  # Gene Set Enrichment Analysis
'

# java from openJDK which is an open replica of oracles corporate version
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

brew cask install dropbox openconnect
brew install miller
brew install brewsci/bio/pymol # open source version

# activate the locate command
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
# disable the play/pause button opening music app
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# julia
brew cask install julia
# language server for nvim lsp
julia -e 'using Pkg; Pkg.add(["LanguageServer", "ArgParse", "StatsBase", "DataFrames", "DataFramesMeta", "CSV", "Distributions", "HypothesisTests", "MultipleTesting"])'

