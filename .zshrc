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
export PATH="$PATH:/usr/local/opt/llvm/bin"  # not sure if needed
# trying this so libfortran can be found
export LIBRARY_PATH="$(echo /usr/local/Cellar/gcc/10.*/lib/gcc/*):$LIBRARY_PATH"

# default user so maybe username is only shown if non-default
DEFAULT_USER="cdegma"
source ~/dotfiles/oh-my-zsh.zsh
source ~/dotfiles/zsh_plugins.sh
# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k.zsh.
[[ ! -f ~/dotfiles/p10k.zsh ]] || source ~/dotfiles/p10k.zsh

source ~/dotfiles/aliases

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/degnbol/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/degnbol/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/degnbol/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/degnbol/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# add scripts to path
export PATH="$PATH:$HOME/OneDrive - Danmarks Tekniske Universitet/degnlib"
export PATH="$PATH:$HOME/biosustain/src" # biosustain code
# . functions.zsh  # load the default functions for biosustain work


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

