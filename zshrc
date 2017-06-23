eval "$(rbenv init -)"
eval $(thefuck --alias)
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "^y" autosuggest-accept

alias vim="/usr/local/Cellar/macvim/*/MacVim.app/Contents/MacOS/Vim"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vimplug="vim ~/.vim/plugins.vim"
alias vimpi="vim +PlugInstall"
alias vimpc="vim +PlugClean"
alias vimpu="vim +PlugUpdate"
alias dev="cd ~/dev"
alias rr="bundle exec rake routes"
alias rrf="bundle exec rake routes | fzf"
alias rs="bundle exec rails s"
alias rc="bundle exec rails c"
alias rdc="bundle exec rake db:create"
alias rdd="bundle exec rake db:drop"
alias rdm="bundle exec rake db:migrate"
alias rds="bundle exec rake db:seed"
alias rdsl="bundle exec rake db:schema:load"
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
alias hbc="heroku pg:backups:capture"
alias hbd="heroku pg:backups:download"
alias ionpi="ionic prepare ios"
alias termtypist="python ~/dev/termtypist/termtypist.py"
alias notes="vim ~/Dropbox/Writer/Notes.md"
alias hyperrc="vim ~/.hyper.js"
alias ns="npm start"
alias tmuxrc="vim ~/.tmux.conf"
alias weather="curl wttr.in/campos_dos_goitacazes"
alias ctags="`brew --prefix`/bin/ctags"
alias fixpsql="rm /usr/local/var/postgres/postmaster.pid && brew services restart postgresql"
alias qutebrowser="open -a /Applications/qutebrowser.app --args --enable-webengine-inspector"
alias sconsify="~/Applications/sconsify"
if [ -n "$TMUX" ]; then alias fzf="fzf-tmux"; fi

export PATH=$PATH:/Users/akz/Library/Android/sdk/platform-tools/
export VISUAL=/usr/local/Cellar/macvim/*/MacVim.app/Contents/MacOS/Vim
# export VISUAL=/usr/local/Cellar/macvim/8.0-133/MacVim.app/Contents/MacOS/Vim
export EDITOR="$VISUAL"
# export ANDROID_HOME="/Users/akz/Library/Android/sdk"
# export ANDROID_NDK="/usr/local/opt/android-ndk/android-ndk-r14b"

unset ZPLUG_CACHE_FILE
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export NVM_LAZY_LOAD=true

zplug "hlissner/zsh-autopair", defer:2
zplug "zsh-users/zsh-completions"
zplug "djui/alias-tips"
# zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "akz92/clean", as:theme
# zplug "~/dev/clean", from:local, use:'clean.zsh-theme'
zplug "plugins/git", from:oh-my-zsh
zplug "akz92/ion-zsh"
zplug "lukechilds/zsh-nvm"
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
