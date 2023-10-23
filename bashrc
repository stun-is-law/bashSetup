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
alias devtabs='wt -w 0 nt -p "bash" --title "dev scheduler"; wt -w 0 nt -p "bash" --title "dev bot-1"; wt -w 0 nt -p "bash" --title "dev bot-2"; wt -w 0 nt -p "bash" --title "dev"'
alias prodtabs='wt -w 0 nt -p "bash" --title "prod scheduler"; wt -w 0 nt -p "bash" --title "prod bot-1"; wt -w 0 nt -p "bash" --title "prod bot-2"; wt -w 0 nt -p "bash" --title "prod"'
# dev logs
alias dev="ssh dev"
alias devscheduler="ssh dev docker service logs -f --tail 150 runbotics-orchestrator_runbotics-scheduler | sed s/.*,/scheduler:/"
alias devbotone="ssh dev docker service logs -f --tail 150 runbotics-desktop_runbotics-desktop | sed s/.*,/bot_1:/"
alias devbottwo="ssh dev docker service logs -f --tail 150 runbotics-desktop-2_runbotics-desktop-2 | sed s/.*,/bot_2:/"
alias devnginx="ssh dev docker service logs -f --tail 150 runbotics-nginx_runbotics-nginx"
# prod logs
alias prod="ssh dev"
alias prodscheduler="ssh prod docker service logs -f --tail 150 runbotics-orchestrator_runbotics-scheduler | sed s/.*,/scheduler:/"
alias prodbot1="ssh prod docker service logs -f --tail 150 runbotics-desktop_runbotics-desktop | sed s/.*,/bot_1:/"
alias prodbot2="ssh prod docker service logs -f --tail 150 runbotics-desktop-2_runbotics-desktop-2 | sed s/.*,/bot_2:/"
alias prodnginx="ssh prod docker service logs -f --tail 150 runbotics-nginx_runbotics-nginx"
# PS1
export PS1="\[$(tput sgr0)\]\[\033[38;5;13m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;33m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;46m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
