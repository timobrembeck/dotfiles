# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_ROOT_ICON="\uf071"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf09b"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status )
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	archlinux
	command-not-found
	Composer
	git
	github
	pip
	python
	systemd
	yii2
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(dircolors ~/.dircolors)

export VISUAL="nano"

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

