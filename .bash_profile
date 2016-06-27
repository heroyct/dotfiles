export CLICOLOR=1

if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1="\W \u\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

alias ch="bundle exec rubocop"
alias migration="bundle exec rails generate migration"
alias mail="bundle exec mailcatcher --http-ip 0.0.0.0"
alias ss="bundle exec rails s -b 0.0.0.0"
alias bowerinstall="bundle exec rake bower:install"
alias gu="git checkout develop&& git fetch origin --tags --prune&& git pull origin develop"
alias gun="git checkout sandbox&& git branch -D develop && git fetch && git checkout -b develop origin/develop"
alias l.="ls -d .* --color=auto"
alias ll="ls -lacs --color=auto"
alias mems="ps -xl --sort -vsize"
alias pecossh="grep -w 'Host' ~/.ssh/config | peco | cut -f 2 -d ' ' | xargs -o -n 1 ssh"
alias vi="vim"
