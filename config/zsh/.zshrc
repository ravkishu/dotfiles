# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# 256-color
export TERM="xterm-256color"

[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh
# THEME
# ZSH_THEME="dracula"
ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git node yarn extract tmux ruby zsh-autosuggestions virtualenvwrapper autojump  docker golang sudo docker-compose zsh-syntax-highlighting)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tree="tree -C"
alias sshold="ssh -oKexAlgorithms=+diffie-hellman-group1-sha1"

# python aliases
alias rmpyc='find . -name "__pycache__" -delete -or -iname "*.pyc" -delete'
alias venv='python3 -m venv'
alias serve='python3 -m http.server'
alias pydoc='python3 -m pydoc'
alias pytime='python3 -m timeit'
alias pyprof='python3 -m profile'
alias jcat='python3 -m json.tool'
alias cal='python3 -m calendar'
alias py2path='python2 -m site'
alias py3path='python3 -m site'
alias bytecode='python3 -m dis'
alias web='python3 -m webbrowser'
alias inspect='python3 -m inspect'
alias tokenize='python3 -m tokenize'
alias zipy='python3 -m zipfile'

# go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:$HOME/Projects/desec
alias zshconfig='nvim $HOME/.zshrc'
alias zshreload='source $HOME/.zshrc'
alias v='nvim'
alias vim='nvim'
unalias gf

source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.zsh

# alias for gron
alias norg="gron --ungron"
alias ungron="gron --ungron"

# alias for keyboard layout
alias keyus='setxkbmap -layout us -variant intl'
alias keybr='setxkbmap -layout br'

# change ls for lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# alias for bashtop
alias top='bashtop'

# for axiom
export PATH="$PATH:/home/mswell/.axiom/interact"
alias upall="yay -Syu --noconfirm"
#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"
alias nmirrorlist="sudo nano /etc/pacman.d/mirrorlist"
