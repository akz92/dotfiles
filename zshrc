eval "$(rbenv init -)"
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey '^ ' autosuggest-accept

source ~/.secrets
source ~/.env

alias git=hub
alias ctags="`brew --prefix`/bin/ctags"
alias dev="cd ~/dev"
alias sz="source ~/.zshrc"
alias zlt="/usr/bin/time zsh -i -c exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ionpi="ionic prepare ios"
alias fixpsql="rm /usr/local/var/postgres/postmaster.pid && brew services restart postgresql"
alias qutebrowser="open -a /Applications/qutebrowser.app --args --enable-webengine-inspector"
alias wira="awc && ira"
# alias ionic="docker run -ti --rm --net host --privileged --name \${PWD##*/} -v ~/.gradle:/root/.gradle -v \$PWD:/myApp:rw agileek/ionic-framework ionic"
# alias ionic-container="docker run -ti --rm --net host --name \${PWD##*/} --privileged -v \$PWD:/myApp:rw agileek/ionic-framework bash"
if [ -n "$TMUX" ]; then alias fzf="fzf-tmux"; fi

# Vim aliases
alias vim=$EDITOR
alias vimpi="vim +PlugInstall"
alias vimpc="vim +PlugClean"
alias vimpu="vim +PlugUpdate"

# Rails aliases
alias rr="bundle exec rake routes"
alias rrf="bundle exec rake routes | fzf"
alias rs="bundle exec rails s -b 127.0.0.1"
alias rc="bundle exec rails c"
alias rdc="bundle exec rake db:create"
alias rdd="bundle exec rake db:drop"
alias rdm="bundle exec rake db:migrate"
alias rds="bundle exec rake db:seed"
alias rdsl="bundle exec rake db:schema:load"
alias rdr="rdsl && rds"
alias rgmi="rails g migration"
alias rgmo="rails g model"

# Heroku aliases
alias hrc="heroku run bundle exec rails c"
alias hrdm="heroku run bundle exec rake db:migrate"
alias hrds="heroku run bundle exec rake db:seed"
alias hrdsl="heroku run bundle exec rake db:schema:load"
alias hl="heroku logs -t"
alias hbc="heroku pg:backups:capture"
alias hbd="heroku pg:backups:download"

export PATH=$PATH:/Users/akz/Library/Android/sdk/platform-tools
export VISUAL=/usr/local/Cellar/macvim/8.0-143/MacVim.app/Contents/MacOS/Vim
export EDITOR="$VISUAL"
export DOTFILES_PATH="$HOME/dev/dotfiles"

export JAVA_HOME="$(/usr/libexec/java_home)"
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk

# Setting rg as the default source for fzf
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
  zplugin light mfaerevaag/wd
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

function dt {
  $EDITOR "$DOTFILES_PATH/$(ls $DOTFILES_PATH | fzf)"
}

function ms {
  meteor --settings deploy/${1:-local}/settings.json
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
export PATH="/usr/local/opt/ffmpeg@2.8/bin:$PATH"
