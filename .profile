alias gh='cd ~/work/Projects/github'
alias be='bundle exec'
alias gs='git status'
alias gcm='git commit -m '
alias gph='git push origin'
alias gpl='git pull --rebase'
alias fm='cd ~/work/acx/projects/field-management'
alias cl='cd ~/work/acx/projects/checklists'
alias xsa='cd ~/work/poricha-kozhis/x-school-api'
alias xsm='cd ~/work/poricha-kozhis/x-school-mobile'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
