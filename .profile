alias gh='cd ~/work/Projects/github'
alias be='bundle exec'
alias gs='git status'
alias gcm='git commit -m '
alias gph='git push origin'
alias gpl='git pull --rebase'
alias fm='cd ~/work/acx/projects/field-management'
alias cl='cd ~/work/acx/projects/checklists'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

