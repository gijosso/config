# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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

# SLRN export
export NNTPSERVER=news.epita.fr

# Path to your oh-my-zsh installation.
export ZSH=/home/josso_t/.oh-my-zsh

# Dirty python fix
export PYHTONPATH=$PYTHONPATH:/usr/local/lib/python2.7/dist-packages

# zsh coloration activaton
plugins=(git git-flow git_remote_branch docker brew node yarn symfony2 sudo python github)
#User configuration
export NO_AT_BRIDGE=1

export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh
DEFAULT_USER=gijo

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
#else
#   export EDITOR='mvim'
#fi

export EDITOR=vim


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi


#WARN
function chpwd() {
    ls
}

#LOSER
alias ks='ls'
alias sl='ls'

#raccourcis fréquents
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -l'
alias l='ls -CF'
alias la='ls -a --color=auto'
alias lla='ls -la'
alias refresh='source ~/.zshrc'
alias gdb='gdb -q'
#alias valgrind='~/.my_bin/valgrind-color.sh'
alias untar='tar -xvf'
#alias sshacu='ssh -x josso_t@acu.epita.fr'
alias sshacu='ssh acu'
alias remake='make -B'
alias powersave='sudo pm-powersave true'

#raccourcis git (also in ~/.gitconfig !)
alias gl='git log'
alias gcl='git clone'
alias gcm='git commit -m'
alias ga='git add'
alias gp='git push'
alias gpt='git push -f origin master --tags && echo *quickie*'
alias gs='git status'
alias gld='git log --decorate'
alias gtsm='git tag submission -m'
alias gtree='git log --graph'
alias gss='git shortlog -se'
alias gmofo='git log --pretty=format:"%h - %an, %ar : %s"'
alias gl='git log'
alias glo='git log --oneline'
alias gpr='git pull --rebase'
alias gd='git diff'
alias glgod='git log --graph --decorate --oneline'
alias gsquash='git rebase --autosquash --autostash -i' #+ sha1 du commit
alias gsi='git submodule init'
alias gsu='git submodule update'
alias gss='git submodule sync'
alias gurl='git config --get remote.origin.url'

#dual screen
alias left-screen='xrandr --auto --output HDMI-1-1 --left-of eDP-1-1'
alias right-screen='xrandr --auto --output HDMI-1-1 --right-of eDP-1-1'
#alias screen='xrandr --auto --output HDMI1 --mode 1680x1050 --right-of eDP1'

#virtual env
alias envac='source env/bin/activate'
