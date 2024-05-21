# git
alias glo="~/code/bashSetup/gitmoji-log.sh"
alias g.="git add ."
alias gll="git pull"
alias gsh="git push"
alias gch="git checkout"
alias gco="git commit"
alias gs="git status"
alias gb="git branch"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gst="git stash"
alias gstp="git stash pop"
alias gsta="git stash apply"
alias rcc="/c/Users/A029616/code/robocorp/rcc.exe"
alias gpu="git push --set-upstream origin"
alias gchd="git checkout develop"
alias gchb="git checkout -"
alias grd="git rebase develop"
alias gch-="git checkout -"
alias gconoe="git commit --amend --no-edit"
alias gchb='function _gchb(){ branch_name="feature/RPA-$1"; echo "checking out to $branch_name"; git checkout "$branch_name"; };_gchb'
alias get="git reset"
alias gst="git stash"
alias gop="git stash pop"
alias gap="git stash apply"
alias ge="git merge"
alias ...="cd ../../"
alias ..="cd ../"

# scripts
alias publish-sdk="bash /c/Users/A029616/code/scripts/publish_rb-sdk.sh"
alias mvgo='function _mvgo() { mv "$1" "$2" && cd "$2"; unset -f _mvgo; }; _mvgo'
alias cpgo='function _cpgo() { cp "$1" "$2" && cd "$2"; unset -f _cpgo; }; _cpgo'
alias ghci='/c/Program\ Files\ \(x86\)/ghc-9.8.2-x86_64-unknown-mingw32/bin/ghci.exe'

# default overvrites
function _rminfo() { trash $1; echo "File(s) moved to the Trash"; }
alias rm='_rminfo'
alias grep='grep --color=auto'

# original commands
alias rmold='rm'
alias grepold='grep'

# nvm
alias node18="nvm link 18 && node -v"
alias node14="nvm link 14 && node -v"

# PS1
export PS1="\[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;46m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# PATH
export PATH="$PATH:/c/Users/Lenovo/AppData/Local/Programs/Microsoft VS Code/bin:~/.local/bin"

# --- STRICTLY FOR WORK ---

# windows terminal tabs
alias devtabs='wt -w 0 nt -p "bash" --title "dev scheduler"; wt -w 0 nt -p "bash" --title "dev bot-1"; wt -w 0 nt -p "bash" --title "dev bot-2"'
alias prodtabs='wt -w 0 nt -p "bash" --title "prod scheduler"; wt -w 0 nt -p "bash" --title "prod bot-1"; wt -w 0 nt -p "bash" --title "prod bot-2"'

# dev logs | sd = ssh dev
alias sdscheduler="ssh dev docker service logs -f --tail 150 runbotics-orchestrator_runbotics-scheduler"
alias sdbot1="ssh dev docker service logs -f --tail 150 runbotics-desktop_runbotics-desktop"
alias sdbot2="ssh dev docker service logs -f --tail 150 runbotics-desktop-2_runbotics-desktop-2"
alias sdnginx="ssh dev docker service logs -f --tail 150 runbotics-nginx_runbotics-nginx"

# prod logs | sp = ssh prod
alias spscheduler="ssh prod docker service logs -f --tail 150 runbotics-orchestrator_runbotics-scheduler"
alias spbot1="ssh prod docker service logs -f --tail 150 runbotics-desktop_runbotics-desktop"
alias spbot2="ssh prod docker service logs -f --tail 150 runbotics-desktop-2_runbotics-desktop-2"
alias spnginx="ssh prod docker service logs -f --tail 150 runbotics-nginx_runbotics-nginx"
