eval "$(rbenv init -)"
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

alias vim="/usr/local/Cellar/macvim/8.0-110/MacVim.app/Contents/MacOS/Vim"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vimplug="vim ~/.vim/plugins.vim"
alias vimpi="vim +PlugInstall"
alias vimpc="vim +PlugClean"
alias vimpu="vim +PlugUpdate"
alias dev="cd ~/dev"
alias rr="rake routes"
alias rrf="rake routes | fzf"
alias rs="rails s"
alias rc="rails c"
alias rdc="rake db:create"
alias rdd="rake db:drop"
alias rdm="rake db:migrate"
alias rds="rake db:seed"
alias rdsl="rake db:schema:load"
alias rdr="rdsl && rds"
alias rgmi="rails g migration"
alias rgmo="rails g model"
alias sz="source ~/.zshrc"
alias zlt="/usr/bin/time zsh -i -c exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias hrc="heroku run bundle exec rails c"
alias hrdm="heroku run bundle exec rake db:migrate"
alias hrds="heroku run bundle exec rake db:seed"
alias hrdsl="heroku run bundle exec rake db:schema:load"
alias hl="heroku logs -t"

export VISUAL=/usr/local/Cellar/macvim/8.0-110/MacVim.app/Contents/MacOS/Vim
export EDITOR="$VISUAL"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export NVM_LAZY_LOAD=true

zplug "hlissner/zsh-autopair", nice:10
zplug "zsh-users/zsh-completions"
zplug "djui/alias-tips"
# zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "themes/alanpeabody", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "akz92/ion-zsh"
zplug "lukechilds/zsh-nvm"
zplug "Tarrasch/zsh-bd"
zplug "zplug/zplug"

if ! zplug check; then
  zplug install
fi

zplug load

function gphm {
  git push heroku ${1:-master}:master
}

## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
alias history='fc -fl 1'

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
