# git
alias glo="git log --oneline"
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
alias ...="cd ../../"
alias ..="cd ../"
alias gchb='function _gchb(){ branch_name="feature/RPA-$1"; echo "checking out to $branch_name"; git checkout "$branch_name"; };_gchb'
# scripts 
alias publish-sdk="bash /c/Users/A029616/code/scripts/publish_rb-sdk.sh"
# nvm
alias node18="nvm link 18.17.1 && node -v"
alias node14="nvm link 14.21.3 && node -v"
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
# PS1
export PS1="\[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;46m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
