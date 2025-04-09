export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
# eval "$(mise activate zsh)"
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey '^ ' autosuggest-accept
# source ~/.secrets
# source ~/.env
source ~/.zsh/aliases.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PGHOST=localhost
# export VISUAL=/usr/local/Cellar/vim/9.0.0300/bin/vim
export VISUAL=nvim
export EDITOR="$VISUAL"
export DOTFILES_PATH="$HOME/dev/dotfiles"
export GEM_HOME=~/.gem
export GEM_PATH=~/.gem
export HOMEBREW_GITHUB_API_TOKEN=9b71eae3e30109f1bac3e9aef965d00a37242a85

# CBS
export CBS_HOME="/Users/lucasmoulin/dev/projects/cbstrials"
alias cbs="cd \$CBS_HOME && ./cbs.sh"
alias bat=batcat

# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
# export PATH="$JAVA_HOME/bin:$PATH"
# export PATH="/Applications/Android Studio.app/Contents/gradle/gradle-5.1.1/bin:$PATH"
# export PATH="$HOME/Library/Android/sdk/tools/bin:$PATH"
# export PATH="$HOME/Library/Android/sdk/tools:$PATH"
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

export ANSIBLE_VAULT_PASSWORD_FILE=.vault_pass

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!spec/cassettes/*" --glob "!test/cassettes/*" --glob "!tmp/*" --glob "!spec/fixtures/vcr_cassettes/*"'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH="$(npm config get prefix)/bin:$PATH"

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

if ! [[ $(zplugin list) ]]; then
  zplugin light zsh-users/zsh-autosuggestions
  zplugin light zsh-users/zsh-syntax-highlighting
  zplugin light hlissner/zsh-autopair
  zplugin light akz92/clean
  zplugin light akz92/ion-zsh
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

function gcod {
  git checkout $(basename $(git symbolic-ref --short refs/remotes/origin/HEAD))
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
export PATH="/usr/local/opt/qt@5.5/5.5.1.1/bin:$PATH"
export PATH="/usr/local/opt/qt@5.5/5.5.1.1/bin/qmake:$PATH"

ssh-add 2>/dev/null
# alias start-docker="~/docker-vm/vftool/build/vftool -k ~/docker-vm/kernel -i ~/docker-vm/initrd -d ~/docker-vm/disk.img -m 4096 -a \"root=/dev/vda console=hvc0\" -t 0"

export PATH="/usr/local/opt/mysql-client@8.0/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql-client@8.0/lib"
export CPPFLAGS="-I/usr/local/opt/mysql-client@8.0/include"

export PATH="$HOME/.local/bin:$PATH"
alias tag-ares="git-tag-ares.sh"
