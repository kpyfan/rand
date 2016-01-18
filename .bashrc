# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#echo 'Greetings, Kevin!'
#echo ""`date "+%H:%M, %A %B %d, %Y"`.
#echo ''
# User specific aliases and functions
export CHECKERS="/cse/courses/cse331/checkers"

PS1="[\[\e[1;34m\]\u\[\e[0m\]@\[\e[1;31m\]\h\[\e[0m\]] \t\n\[\e[1;32m\]\W\[\e[0m\] \$ "

# Extraction
function extract()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1     ;;
      *.tar.gz)    tar xvzf $1     ;;
      *.bz2)       bunzip2 $1      ;;
      *.rar)       unrar x $1      ;;
      *.gz)        gunzip $1       ;;
      *.tar)       tar xvf $1      ;;
      *.tbz2)      tar xvjf $1     ;;
      *.tgz)       tar xvzf $1     ;;
      *.zip)       unzip $1        ;;
      *.Z)         uncompress $1   ;;
      *.7z)        7z x $1         ;;
      *)
      echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#alias
alias paradox='ssh ubuntu@54.244.246.14 -i ~/Desktop/Other/Paradox/Paradox.pem'
alias vader='ssh ubuntu@54.244.246.14 -i ~/Desktop/Other/Paradox/Paradox-Vader.pem'
alias kc='ssh kc@codered.cs.washington.edu -i ~/Desktop/School/cse484/kc.pem'
alias compc='gcc -Wall -g -std=gnu99 -o'
alias cpp='g++ -Wall -g -std=gnu++11 -o'
alias browser='chromium-browser'
alias attu='ssh kpyfan@attu.cs.washington.edu'
alias ls='ls -G'
alias ll='ls -laG'
alias la='ls -aG'
alias ..='cd ..'
alias .='pwd;ls -G'
alias ~='cd ~'
alias 333='cd ~/Desktop/cse333/'
alias 451='cd ~/cse451/'
alias 484='cd ~/Desktop/School/cse484'
alias l='ls -G'
alias gpush='git push'
alias gpull='git pull'
alias gstat='git status'
alias gcam='git commit -am '
alias glog='git log'
alias os='cd ~/cse451/os161'
alias buildos='bmake && bmake install'
alias 451gdb='cse451-gdb -tui kernel'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
