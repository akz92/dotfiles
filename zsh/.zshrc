setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
bindkey '^ ' autosuggest-accept
# source ~/.secrets
# source ~/.env
source ~/.zsh/aliases.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export VISUAL=nvim
export EDITOR="$VISUAL"
export DOTFILES_PATH="$HOME/dev/dotfiles"
export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

# CBS
export CBS_HOME="/home/lucas/dev/projects/cbstrials"
alias cbs="cd \$CBS_HOME && ./cbs.sh"

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!spec/cassettes/*" --glob "!test/cassettes/*" --glob "!tmp/*" --glob "!spec/fixtures/vcr_cassettes/*"'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

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
  zplugin snippet OMZ::plugins/git/git.plugin.zsh
fi

function vmi {
  $EDITOR $(ls -td db/migrate/* | head -1)
}

function gcof {
  git checkout $(git branch | fzf)
}

function gcod {
  git checkout $(basename $(git symbolic-ref --short refs/remotes/origin/HEAD))
}

function dt {
  $EDITOR "$DOTFILES_PATH/$(ls $DOTFILES_PATH | fzf)"
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


export PATH=".:${HOME}/bin:${PATH}" 

export CBS_HOME="/home/lucas/dev/projects/cbstrials"
alias cbs="cd \$CBS_HOME && ./cbs.sh"

# . "$HOME/.asdf/asdf.sh"

export SSH_AUTH_SOCK=/home/lucas/.bitwarden-ssh-agent.sock

ssh-add 2>/dev/null

[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland

if [ "$TMUX" = "" ]; then tmux new -As0; fi

cd $CBS_HOME
