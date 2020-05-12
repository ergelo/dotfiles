###########################
#                         #
# oh-my-zsh configuration #
#                         #
###########################

# Path to your oh-my-zsh installation.
if [ -f ~/.zshrc.gubuntu  ]; then
    source ~/.zshrc.gubuntu
else
	source ~/.zshrc.mac
fi

# Set name of the theme to load.
ZSH_THEME="bullet-train"
BULLETTRAIN_CONTEXT_SHOW="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

######################
#                    #
# User configuration #
#                    #
######################

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

###################
#                 #
# Personal Config #
#                 #
###################

alias ls='ls -lh'
alias src='source'

#terminal color settings
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#System Config
if [ -e /usr/libexec/java_home ]; 
    then export JAVA_HOME=`/usr/libexec/java_home`;
fi 

# Global stuff
# export EDITOR=vim

