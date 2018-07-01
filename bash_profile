workspace=~/workspace

export AWS_ACCOUNT="9999999999"
export ENVIRONMENT="barend-local"
export LOCAL_DYNAMO="true"
export LOCAL_DYNAMO_HOST="$workspace/local_dynamodb"
export RAYGUN_API_KEY="test"
export MOBILE_API_URL_BASE="http://localhost:6970"

# GIT COMMANDS/ALIASES
alias g="git"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gan="git add"
alias ga="git add -p"
alias gch="git checkout"
alias ghcb="git checkout -b"
alias gb="git branch"
alias gr="git reset"
alias gp="git push --follow-tags"
alias gt="git tag"
alias gpl="git pull"
alias gclean="find . -type f -name '*.orig' -exec rm -r {} +"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' -e "s/ //"
}

function gcm {
  git commit -m "$(parse_git_branch) $@"
}

# NPM ALIASES
alias nrs="npm run start"
alias nrt="npm run test"
alias nrc="npm run compile"

# OTHER ALIASES
alias ws="cd ~/workspace"
alias platform="cd ~/workspace/capps-platform"
alias platform.f="cd ~/workspace/capps-platform/frontend"
alias platform.b="cd ~/workspace/capps-platform/backend"

# AWS-VAULT
alias av="aws-vault"
