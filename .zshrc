# If you come from bash you might have to change your $PATH.
export PATH=$PATH:/usr/bin:/bin:$HOME/bin:/usr/local/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages zsh-syntax-highlighting)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# venv () {
#     # Usage: activate_venv [venv_name]
#     # Travels up the directory tree looking for a virtual environment that
#     # matches $venv_name. Activates the first one that it finds.
#     # Default venv_name: venv*
# 
#     venv_name="$1"
# 
#     path=$(pwd)
#     venv_path=""
#     if [[ "$venv_name" == "" ]]
#     then
#         venv_name="venv*"
#     fi
#     while [[ "$path" != "" && "$venv_path" == "" ]]
#     do
#         for fname in $path/$venv_name
#         do
#             # If there exists a directory that matches $venv_name, then set
#             # venv_path to that path.
#             [ -d "$fname" ] && venv_path=$fname
#         done
#         path=${path%/*}
#     done
#     if [[ "$venv_path" == "" ]]
#     then
#         echo "No venv matching $venv_name found!"
#     else
#         echo "Using venv at: $venv_path"
#         source $venv_path/bin/activate
#         echo "$(python -V)"
#     fi
# }

explore_f () {
    session=$DESKTOP_SESSION
    if [[ $session == "plasma" ]]
    then
        dolphin .
    fi
}
alias explore=explore_f

try_f () {
    session=$DESKTOP_SESSION
    if [[ $session == "plasma" ]]
    then
        kde-open $1
    fi
}
alias try=try_f

export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias rsync2="rsync --info=progress2"
alias clip="xargs echo -n | xclip -selection clipboard"

alias kitten='ssh -X jason@kitten.eecs.berkeley.edu'
alias maul='ssh -X jason@maul.banatao.berkeley.edu'
alias em2='ssh -X jason@em2.ist.berkeley.edu'
alias savio='ssh zhangj@hpc.brc.berkeley.edu'
alias replicant='ssh -X jasonzh2@gs19639.sp.cs.cmu.edu'
alias replicanty='ssh -Y jasonzh2@gs19639.sp.cs.cmu.edu'

em () {
    host="jason@em$1.ist.berkeley.edu"
    echo $host
    ssh -X $host
}

cuda_set () {
    echo export CUDA_VISIBLE_DEVICES=$1
    export CUDA_VISIBLE_DEVICES=$1
}
cuda_ls () {
    echo $CUDA_VISIBLE_DEVICES
}


alias ns='nvidia-smi'

alias source_sh='source ~/.zshrc'
unsetopt nomatch  # Use bash behavior for globbing
unsetopt share_history  # Don't want to share history across panes...
