## CUSTOM ALIASES ##
alias bash="sudo gedit ~/.bash_aliases"

## SYSTEM ##
alias reboot='sudo /sbin/reboot'
alias halt='sudo /sbin/halt'
alias poweroff='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'

# change directory and show files
function cd() { builtin cd "$@" && ls && pwd; }

# clear screen
alias c="clear"

# folder navigation (todo: improve)
alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# create folders on demand
alias mkdir='mkdir -pv'

# bash history
alias h='history'

# system procs
alias j='jobs -l'

# show disk usage
alias disc="df - h"

## UTILS ##
alias genpass="openssl rand -base64 20"
alias speedtest="speedtest-cli --server 34200 --simple"
alias ipe="curl ipinfo.io/ip"
alias ipi="hostname -I"

# copy with progress bar
alias cpp='rsync -ah --info=progress2'

## GIT ##
alias gst='git status'
alias gpl='git pull'
alias gcm='git commit -am'
alias gps='git push'
alias gsave='git config credential.helper store'
alias ggsave='git config --global credential.helper store'


## UNDER WORK ##
# Reboot my home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix.
alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"
 
# Reboot tomato based Asus NT16 wireless bridge
alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"

# Display an "alert" after running commands.  Use like so:
#   sleep 10; alert "Done sleeping"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# meow
alias meow='echo "meow" | festival --tts'
