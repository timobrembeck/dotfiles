# programs
alias chromium='chromium --password-store=basic'
alias spotify='spotify --force-device-scale-factor=2'

# cd
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias ll='ls -ltra'
alias l.='ls -d .*'

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

# cat
alias cat="ccat --bg='dark' -G String='yellow'"

# chmod
alias xmod='chmod +x'

# synergy
alias synergyc='ssh -N -f -L 24800:localhost:24800 timo-pc && synergyc localhost'
alias synergyc-ssh='sudo systemctl start sshd.socket && ssh -N -f -L 24800:localhost:24800 timo-pc && synergyc localhost'

# power management
alias i3lock-blur='/home/timo/.config/i3/i3lock.sh'
alias suspend='i3lock-blur && systemctl suspend'

# updates
alias update='sudo pacman -Syu && yaourt -Syua'

# ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

