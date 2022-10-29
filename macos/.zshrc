# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/drshtn/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


### THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

### USERS
DEFAULT_USER=$(whoami)


### FUNCTIONS
prompt_context() {
  # if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
  #   prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  # fi
}


### SOURCES
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


### PATH
JAVA_HOME="$(/usr/libexec/java_home)"
export PATH=$HOME/.toolbox/bin:$JAVA_HOME:$PATH
export PATH="/Applications/Fortify/Fortify_SCA_and_Apps_21.2.3/bin:$PATH"


### OTHERS
JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"


### MANPAGERS KEEP ONLY ONE
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export MANPAGER="nvim -c 'set ft=man' -"

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


### ALIASES
alias ls='exa -l --color=always --group-directories-first'
alias la='exa -al --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias lgrep='ls | grep'
alias grep='grep --color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

alias verify='~/verify.sh'
alias clouddesktop='~/clouddesktop.sh'


### GIT
alias ga='git add'
alias gb='git branch'
alias gs='git status'
alias gc='git commit'
alias gr='git restore --staged'
alias gp='git pull -r'
alias gl='git log'
alias gt="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias gch='git checkout'
alias gcho='git checkout --ours'
alias gcht='git checkout --theirs'
alias gst='git stash'
alias grb='git rebase'


### BRAZIL-BUILD
alias bb='brazil-build'
alias bbb='brazil-build bootstrap'
alias bbc='brazil-build clean'
alias bbg='brazil-build generate'
alias bbi='brazil-build app install'
alias bbr='brazil-build release'
alias bbs='brazil-build server'
alias bbt='brazil-build test'

alias bboot='brazil-bootstrap'
alias bbcbb='brazil-build clean && brazil-build'
alias bbcbbr='brazil-build clean && brazil-build release'
alias bbrec='brazil-recursive-cmd --allPackages brazil-build release'
alias bbsut='brazil-build single-unit-test'
alias bbcbbg='brazil-build clean && brazil-build generate'
alias bbpipeline='brazil-build bootstrap && brazil-build cdk bootstrap && brazil-build deploy:pipeline'
alias bbreq='cd ../TransCapacityManagementServiceModel && bbcbbr && cd ../TransCapacityManagementDataAccess && bbcbbr && cd ../TransCapacityManagementServiceJavaClient && bbcbbr && cd ../TransCapacityManagementService && bbcbbr'


### BRAZIL
alias bw='brazil ws'
alias bwc='brazil ws create'
alias bwu='brazil ws use'
alias bwr='brazil ws remove'
alias bwd='brazil ws delete'
alias bws='brazil ws --sync --md'
alias bsp='brazil setup platform-support'


### RDE
alias rs='rde stack'
alias rb='rde build'
alias rss='rde stack show --all'
alias rw='rde wflow'
alias rwr='rde wflow run'
alias rwrv='rde wflow run validate'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
