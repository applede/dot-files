alias ls='ls -G'
function title {
  echo -ne "\033]0;"$*"\007"
}
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
