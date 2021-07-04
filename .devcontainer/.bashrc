export GH_TOKEN=$(cat ~/.gh/token)

# return the git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

set_bash_prompt(){
  blue=$(tput setaf 4)
  green=$(tput setaf 2)
  red=$(tput setaf 1)
  magenta=$(tput setaf 5)
  cyan=$(tput setaf 6)
  reset=$(tput sgr0)
  PS1="\[$blue\]\u \[$green\]\w\[$red\]\[\$(parse_git_branch) \]\[$cyan\]$ \[$reset\]"
}

PROMPT_COMMAND=set_bash_prompt

# run tfswitch if directory contains a *.tf file
cdtfswitch() {
  builtin cd "$@";
  cdir=$PWD;
  count=`ls -1 *.tf 2>/dev/null | wc -l`
  if [ $count != 0 ]; then
    tfswitch
  fi
}
alias cd='cdtfswitch'

alias ll='ls -laG'

alias gfp='git fetch; git pull'
