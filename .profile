alias gh='cd ~/work/Projects/github'
alias be='bundle exec'
alias gs='git status'
alias gcm='git commit -m '
alias gph='git push origin'
alias gpl='git pull --rebase'
alias fm='cd ~/work/acx/projects/field-management'
alias cl='cd ~/work/acx/projects/checklists'
alias fa='cd ~/work/acx/projects/field-api'
alias xsa='cd ~/work/poricha-kozhis/x-school-api'
alias xsm='cd ~/work/poricha-kozhis/x-school-mobile'
alias gt='grunt tasks | grep '
alias rediss='redis-server /usr/local/etc/redis.conf'
alias redisc='redis-cli'
alias gtbd='grunt android:debug-clean-build android:device-deploy'
alias gtdemo='grunt test:css:demo-server'
alias bdb='cd /Users/deepak/work/acx/projects/babylon/babylon-deployment/vagrant'
alias drmi='docker rmi $(docker images -a -q)'
alias dcrm='docker-compose stop && docker-compose rm -f'
alias drm='docker rm $(docker ps -a -q)'
alias dup='docker-compose up -d'
alias esup='docker run -d -p 9200:9200 -p 9300:9300 elasticsearch elasticsearch -Des.node.name="deepak" -Des.cluster.name="deepak"'


# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color


#change teminal color on ssh
function set_term_bgcolor {
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "iTerm"
  tell the current terminal
    tell the current session
      set background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
    end tell
  end tell
end tell
EOF
}

function ssh {
    set_term_bgcolor 70 0 0
    command ssh $@
    set_term_bgcolor 0 0 0
}

