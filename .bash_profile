alias ls='ls -G'
PATH=~/bin:$PATH

function title {
  echo -ne "\033]0;"$*"\007"
}

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Visual Studio Code
code () {
    VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

export LC_CTYPE=ko_KR.UTF-8
export SVN_EDITOR=vim
export SVN_SSH='ssh -i /Users/jake/.ssh/jake.q5.svn.id_rsa -q'
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
