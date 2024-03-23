# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Installation process for powerlevel10k
# 1. Install zsh
# 2. Install oh-my-zsh: https://github.com/ohmyzsh/ohmyzsh -> sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 3. Install plugins: https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df
# 4. Install powerlevel10k using oh-my-zsh: https://github.com/romkatv/powerlevel10k#installation
# 5. (Optional) For configuration -> p10k configure

export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short
export AUTO_TITLE_SCREENS="NO"

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then export EDITOR='vim'; else export EDITOR='mvim'; fi

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
ARCH_ICON=''


export PATH=$PATH:$HOME/.toolbox/bin
export PATH=$PATH:/apollo/env/OdinTools/bin:/apollo/env/EDXClient/bin:/apollo/env/NodeJS/bin:/apollo/env/envImprovement/bin:
export PATH=$PATH:/home/drshtn/.local/bin


### THEME
ZSH_THEME="powerlevel10k/powerlevel10k"


### USERS
DEFAULT_USER=$(whoami)


### SOURCES
source $ZSH/oh-my-zsh.sh


### FUNCTIONS
set-title() {
    echo -e "\e]0;$*\007"
}
ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}
kinitr() {
  kinit -f -l 10h -r 7d;
}
if ! klist -s; then kinitr; fi;


### Stats
alias disk='df -H'
alias ram='free -h'


### Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'


### GIT
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gds='git diff --staged'
alias gdsn='git diff --staged --name-only'
alias gl='git log'
alias gr='git restore --staged'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias gs='git status'
alias gst='git stash'
alias gstc='echo git stash clear' # Just to be on safe side
alias gstp='git stash pop'
alias gtree="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"


### BRAZIL-BUILD
alias bb='brazil-build'
alias bbb='brazil-build bootstrap'
alias bbc='brazil-build clean'
alias bbg='brazil-build generate'
alias bbi='brazil-build app install'
alias bbr='brazil-build release'
alias bbs='brazil-build server'
alias bbt='brazil-build test'
alias bbw='brazil-build wrapper'
alias bbcbb='brazil-build clean && brazil-build'
alias bbcbbr='brazil-build clean && brazil-build release'
alias bbcbbg='brazil-build clean && brazil-build generate'
alias bbrec='brazil-recursive-cmd brazil-build release --allPackages'
alias bbsut='brazil-build single-unit-test'
alias bbpipeline='brazil-build bootstrap && brazil-build cdk bootstrap && brazil-build deploy:pipeline'
alias bbinteg='AWS_REGION=us-east-1 Stage=beta brazil-build integTest'


### BRAZIL
alias bw='brazil ws'
alias bwc='brazil ws create'
alias bwu='brazil ws use'
alias bwr='brazil ws remove'
alias bwd='brazil ws delete'
alias bws='brazil ws sync --md'
alias bsp='brazil setup platform-support'
alias bcc='brazil-package-cache clean'
alias bboot='brazil-bootstrap'
# brazil vs clone --from TransCapacityManagementService/development --to TransCapacityManagementService/development-drshtn-clone --overwrite // To clone/override a vs from a target vs
# brazil vs removemajorversions -vs CERPService/development // Remove all unused packages from given vs
# brazil vs removemajorversions -vs TransCapacityManagementService/development --majorversion DeclarativeCoralMetricsCoralServiceBinding-2.1 // To remove only a package from vs
# brazil vs printdependencies -vs CERPService/development -p TransCLCClauseLambdaModel-1.0 // To find out packages used by target package
# brazil vs printdependencies -vs CERPService/development -consumers -p TransCLCClauseLambdaModel-1.0 // To find out all packages which use the target package


### RDE
alias rw='rde wflow'
alias rwr='rde wflow run'
alias rwrv='rwr validate'
alias rs='rde stack'
alias rec='rde env clean'1
alias rwrl='rde wflow run && docker exec $1 sh -c "tail -f /apollo/env/$1/var/output/logs/application.log.*" | grep -v -e MetricAggregationClientScheduled-1 -e MetricAggregationClientPublisher-1 -e CloudAuthTokenAuthorizer | grep -e "\[INFO\]" -e "\[ERROR\]" -e Error -e error -e "at " -e CausedBy'
#### USE WITH CAUTION
alias rde_reboot='rec && rwr && rwrv'
alias rde_reboot_hard='rec && bbrec_hard && rwr && rwrv'


### CR
alias cr='cr --destination-branch mainline'
alias crh='cr --destination-branch mainline --parent HEAD^'


## Docker
export DOCKER_HOST=unix:///Users/$USER/.docker/run/docker.sock
alias dockerImagesRemove='docker rmi -f $(docker images -q)'


### ADA
# alias adaCred='ada credentials update --provider conduit --role IibsAdminAccess-DO-NOT-DELETE --once --account'  ### Created bash script for this


### Docker
alias dockerDelete='docker rmi -f $(docker images -q)'


# Gordian Knot
# gk-analyze-all, gk-analyze-guidance, gk-analyze-inconsistencies, gk-analyze-package, gk-analyze-version-set, gk-explain, gk-fix-mv-conflicts, gk-graph


# if you wish to use IMDS set AWS_EC2_METADATA_DISABLED=false
export AWS_EC2_METADATA_DISABLED=true


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


### Kinit and MWinit auto-renewal
kinit_renew() {
    echo "Renewing Kinit"; kinit -f -l 10h -r 7d;
}
run_ssh_agent() {
    if ps -p $SSH_AGENT_PID > /dev/null; then echo "ssh-agent is already running"
    else eval `ssh-agent -s`; fi
}
mwinit_validate() {
    SSH_CERT=~/.ssh/id_rsa-cert.pub
    if (! test -f "$SSH_CERT") || (test "`find ~/.ssh/id_rsa-cert.pub -mmin +1220`"); then
        echo "Midway expired. Please re-authenticate."
        if mwinit -o ; then
            run_ssh_agent
            ssh-add -D ~/.ssh/*_rsa
            ssh-add ~/.ssh/*_rsa
        else echo "Failed to Authenticate."; fi
    else echo "Midway Authenticated."; fi
}
auto_renew_kinit_mwinit() {
    echo "Checking for Kinit Authentication"
    if ! klist -s; then kinit_renew; else echo "Kinit Authenticated"; fi
    echo "Checking for Midway Authentication"
    mwinit_validate
}
auto_renew_kinit_mwinit


### SSH Key Generation
# ssh-keygen -t ecdsa
