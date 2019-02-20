#Meta
alias szsh="source /Users/royclone/.zshrc"
alias vohmy="vim /Users/royclone/.oh-my-zsh"

#Git
alias gaa="git add -A ."
alias gpr="git pull --rebase"
alias gpo="git put"
alias gitprune="git remote prune origin"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gst="git st"
alias gca="git commit --amend"

#Ruby
alias be="bundle exec"
alias gi="gem install $@ --no-rdoc --no-ri"
alias ospec="be rspec --fail-fast --order defined $@"

#Rails
alias routes="rake routes | vim -"
alias jobs="QUEUE=* bundle exec rake resque:work"

#Heroku
alias rpc="rake production console"
alias rsc="rake staging console"
alias rsl="rake staging logs:tail"
alias rpl="rake production logs:tail"
alias rac="rake autotag:create[ci]"
alias ral="rake autotag:list"
alias rsd="rake staging deploy"
alias gsp="git smart-pull"
alias gcm="git co master"

#Doge
alias such="git"
alias very="git"
alias much="git"
alias wow="git status"

#Docker
alias dc="docker-compose"
