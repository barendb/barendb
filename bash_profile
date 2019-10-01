workspace=~/workspace

export AWS_ACCOUNT="9999999999"
export ENVIRONMENT="barend-local"
export LOCAL_DYNAMO="true"
export LOCAL_DYNAMO_HOST="$workspace/local_dynamodb"

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
alias gbegone="git clean -f -d"
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
alias platform="cd ~/workspace/platform"

# AWS-VAULT
alias av="aws-vault"
alias ave="aws-vault exec"


# HELP
alias halp='echo "halp_aws_accounts, halp_sqs"'
alias halp_aws_accounts='echo -e "test=944328028601 prod=9999 cat=9999"'
alias halp_sqs='echo "av exec capps-cat-admin -- aws sqs send-message --queue-url=https://sqs.us-west-2.amazonaws.com/944328028601/thie_queue --message-body \"{}\""'

# DOCKER
alias dockerdown="docker stop $(docker ps -a -q)"

alias vi=vim

eval $(thefuck --alias)
