# system
alias l='ls -lh'
alias ll='ls -hl'
alias e='exit'
alias c='clear'
alias dsize='du -hd1'

# tools
alias srf='sudo open ~/Library/Preferences/com.apple.HIToolbox.plist'
alias ip='ipconfig getifaddr en0'
alias nat='~/Downloads/cpolar http 9527'

# ssh
alias sshxy='ssh jms.yingzhongtong.com'

# dir
alias sc='cd ~/code/sc'
alias code='cd ~/code/'
alias blog='cd ~/code/blog'
alias api='cd ~/code/api'
alias xy='cd ~/code/xy'
alias sdkdir='cd ~/.sdkman/candidates'
alias proto='cd ~/.gradle/caches/modules-2/files-2.1/com.xiaoying.cardloan/xiaoying-protos'
alias core='cd ~/.gradle/caches/modules-2/files-2.1/com.xiaoying/xiaoying-core'
alias uen='cd ~/code/utools-encrypt'

# docker
alias ds='docker ps'
alias dp='docker-compose up'
alias dd='docker-compose down'

# maven
alias mdt='mvn dependency:tree'
alias mc='mvn clean'
alias mcp='mvn clean package -U -DskipTests'
alias mi='mvn install -DskipTests'
alias md='mvn deploy -DskipTests'
alias m2='cd ~/.m2/repository'
alias m2s='cd ~/.m2/repository/com/sunkz'

# gradle
alias g2='cd ~/.gradle/caches/modules-2/files-2.1'

# git
alias gam='git commit -am '
alias gc='bash ~/.git-checkout.zsh'
alias gcd='git checkout develop'
alias gd='git diff'
alias gp='git pull'
alias gl='git log'
alias gh='git push'
alias gr='git reset --hard head'
alias gs='git status'
alias gb='git branch'
alias gv='git remote -v'
alias gg='bash ~/.deploy.zsh'

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# vmr
export PATH="$HOME/.vmr/vmr.sh:$PATH"

# Git 分支名
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{cyan}%1~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '
export PROMPT_EOL_MARK=''

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"