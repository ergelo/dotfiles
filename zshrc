# Path to your oh-my-zsh installation.
if [ -f ~/.zshrc.gubuntu  ]; then
    source ~/.zshrc.gubuntu
else
	source ~/.zshrc.mac
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"
BULLETTRAIN_CONTEXT_SHOW="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# User configuration

export PATH="/Users/brunopanara/homebrew/bin:/Users/brunopanara/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/local/git/current/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#

#Personal Config
alias ls='ls -lh'
alias macvim='mvim' #http://webexpose.org/2008/10/13/open-macvim-tabs-from-command-line/
alias src='source'
alias todo='mvim ~/Desktop/todo'
alias fixcam='sudo killall AppleCameraAssistant;sudo killall VDCAssistant'
alias python='python2'

#Virtualenv config
export VIRTUALENVWRAPPER_PYTHON=/Users/brunopanara/homebrew/bin/python2
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/projects
if [ -e /usr/local/bin/virtualenvwrapper.sh ]; 
  then source /usr/local/bin/virtualenvwrapper.sh; 
fi 

export VIRTUAL_ENV_DISABLE_PROMPT=true

#terminal color settings
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#Github Token
export HOMEBREW_GITHUB_API_TOKEN=a2fe916e91b91d79961ff4eb884029d1b04ce9d0

#System Config
if [ -e /usr/libexec/java_home ]; 
    then export JAVA_HOME=`/usr/libexec/java_home`;
fi 

alias corp_auth='~/bin/auth-refresh-gtunnel.par ergelo.hot'
alias auth_refresh='~/bin/auth-refresh-gtunnel.par ergelo.hot'

# Global stuff
export EDITOR=vim

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
