#instead of ls alias ls= `--color=auto` using ~/.dir_colors instead
#alias ls='ls --color=auto'

#[ ! "$UID" = "0" ] && archbey -c white
#[  "$UID" = "0" ] && archbey -c red

PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"

#load RVM
#[[ -s "/home/ray/.rvm/scripts/rvm" ]] && source "/home/ray/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export EDITOR=vim

#as suggested by dircolors-solarized-git
#export TERM=xterm-256color        # for common 256 color terminals (e.g. gnome-terminal)
#export TERM=screen-256color       # for a tmux -2 session (also for screen)
#export TERM=rxvt-unicode-256color # for a colorful rxvt unicode session
#eval $(dircolors -b /home/ray/.dir_colors)
eval $(dircolors -b /home/ray/.dir_colors_solarized_dark)

PATH="${PATH}:~/.cabal/bin:/usr/local/bin:/home/ray/bin:/usr/lib/colorgcc/bin:/usr/share/processing/"

# using vim as a syntax highlighting pager
alias vless='vim -u /usr/share/vim/vim73/macros/less.vim'

# http://pythonic.pocoo.org/2008/3/28/using-pygments-with-less 
export LESSOPEN="|lesspipe.sh %s"
export LESSCOLORIZER=pygmentize

# COLORIZE MY NON BUILT IN STUFF!
#alias yaourt="yaourt --color"

# http://unix.stackexchange.com/questions/148/colorizing-your-terminal-and-shell-environment
alias less='less --RAW-CONTROL-CHARS'
export LS_OPTS='--color'
alias ls='ls ${LS_OPTS}'
export GREP_OPTIONS='--color=auto'

# x11-ssh-askpass pops up even from command line - this disables it
unset SSH_ASKPASS
eval $(ssh-agent)
ssh-add

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting