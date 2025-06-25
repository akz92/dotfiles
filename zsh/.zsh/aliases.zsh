# alias git=hub
# alias ctags="`brew --prefix`/bin/ctags"
alias dev="cd ~/dev"
alias sz="source ~/.zshrc"
alias zlt="/usr/bin/time zsh -i -c exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ionpi="ionic prepare ios"
# alias fixpsql="rm /usr/local/var/postgres/postmaster.pid && brew services restart postgresql"
alias qutebrowser="open -a /Applications/qutebrowser.app --args --enable-webengine-inspector"
alias wira="awc && ira"
alias wk="tmuxinator start work"
if [ -n "$TMUX" ]; then alias fzf="fzf-tmux"; fi

# Vim aliases
alias vim=$EDITOR
alias vimpi="vim +PlugInstall"
alias vimpc="vim +PlugClean"
alias vimpu="vim +PlugUpdate"

# Rails aliases
alias be="bundle exec"
alias rr="bundle exec rake routes"
alias rrf="bundle exec rails routes | fzf"
alias rs="bundle exec rails s -b 127.0.0.1"
alias rc="bundle exec rails c"
alias rdc="bundle exec rake db:create"
alias rdd="bundle exec rake db:drop"
alias rdm="bundle exec rake db:migrate"
alias rds="bundle exec rake db:seed"
alias rdsl="bundle exec rake db:schema:load"
alias rdr="rdsl && rds"
alias rgmi="bundle exec rails g migration"
alias rgmo="bundle exec rails g model"
alias fs="foreman start"
alias fsl="bundle exec foreman start -f Procfile.local"
alias prod="be cap production deploy && sh bin/bump-version && sh bin/sync-master"

# Heroku aliases
alias hrc="heroku run bundle exec rails c"
alias hrdm="heroku run bundle exec rake db:migrate"
alias hrds="heroku run bundle exec rake db:seed"
alias hrdsl="heroku run bundle exec rake db:schema:load"
alias hl="heroku logs -t"
alias hbc="heroku pg:backups:capture"
alias hbd="heroku pg:backups:download"

