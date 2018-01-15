eval "$(rbenv init -)"
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey '^ ' autosuggest-accept

source ~/.secrets
source ~/.env
source ~/.zsh/aliases.zsh
source ~/.zsh/edools.zsh

export PATH=$PATH:/Users/akz/Library/Android/sdk/platform-tools
export VISUAL=/usr/local/Cellar/macvim/8.0-144/MacVim.app/Contents/MacOS/Vim
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

function gcof {
  git checkout $(git branch | fzf)
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
