eval "$(rbenv init -)"
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

alias vim=$EDITOR
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
alias kittyrc="vim ~/dev/dotfiles/kitty.conf"
alias weather="curl wttr.in/campos_dos_goitacazes"
alias ctags="`brew --prefix`/bin/ctags"
alias fixpsql="rm /usr/local/var/postgres/postmaster.pid && brew services restart postgresql"
alias qutebrowser="open -a /Applications/qutebrowser.app --args --enable-webengine-inspector"
alias sconsify="~/Applications/sconsify"
alias wira="awc && ira"
if [ -n "$TMUX" ]; then alias fzf="fzf-tmux"; fi

export PATH=$PATH:/Users/akz/Library/Android/sdk/platform-tools
export VISUAL=/usr/local/Cellar/macvim/8.0-137_2/MacVim.app/Contents/MacOS/Vim
# export VISUAL=/usr/local/Cellar/macvim/8.0-133/MacVim.app/Contents/MacOS/Vim
export EDITOR="$VISUAL"
# export ANDROID_HOME="/Users/akz/Library/Android/sdk"
# export ANDROID_NDK="/usr/local/opt/android-ndk/android-ndk-r14b"

# Setting ag as the default source for fzf
# export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NVM_LAZY_LOAD=true

### Added by Zplugin's installer
source '/Users/akz/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

if ! [[ $(zplugin list) ]]; then
  zplugin light zsh-users/zsh-autosuggestions
  zplugin light zsh-users/zsh-syntax-highlighting
  zplugin light hlissner/zsh-autopair
  zplugin light akz92/clean
  zplugin light akz92/ion-zsh
  zplugin light lukechilds/zsh-nvm
  zplugin snippet OMZ::plugins/git/git.plugin.zsh
fi

function gphm {
  git push heroku ${1:-master}:master
}

function vmi {
  $EDITOR $(ls -td db/migrate/* | head -1)
}

function apps {
  mdfind kMDItemContentType=\*.application-bundle
}

function oa {
  open "$(apps | fzf)"
}

function pw {
  openssl rand -base64 12
}

function qrc {
  echo ${1} | curl -F-=\<- qrenco.de
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
