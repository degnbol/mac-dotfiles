# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# settings these makes us avoid warnings from python and perl on remotes.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# workaround of the right p10k prompt having a gap:
ZLE_RPROMPT_INDENT=0

export PATH="$HOME/bin:/usr/local/bin:$PATH"
# trying this so libfortran can be found
export LIBRARY_PATH="/usr/local/Cellar/gcc/10.2.0/lib/gcc/10:$LIBRARY_PATH"

# default user so maybe username is only shown if non-default
DEFAULT_USER="cdegma"
source ~/dotfiles/oh-my-zsh.zsh
source ~/dotfiles/zsh_plugins.sh
# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k.zsh.
[[ ! -f ~/dotfiles/p10k.zsh ]] || source ~/dotfiles/p10k.zsh

source ~/dotfiles/aliases

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cdegma/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cdegma/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/cdegma/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cdegma/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/Applications/Julia-1.5.app/Contents/Resources/julia/bin"

# add scripts to path
export PATH="$PATH:$HOME/OneDrive - Danmarks Tekniske Universitet/degnlib"
export PATH="$PATH:$HOME/biosustain/src" # biosustain code
. functions.zsh  # load the default functions for biosustain work

