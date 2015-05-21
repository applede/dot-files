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
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

export LC_CTYPE=ko_KR.UTF-8
