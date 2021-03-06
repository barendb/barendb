workspace=~/workspace

export AWS_ACCOUNT="9999999999"
export ENVIRONMENT="barend-local"
export LOCAL_DYNAMO="true"
export LOCAL_DYNAMO_HOST="$workspace/local_dynamodb"

# GIT COMMANDS/ALIASES
alias gwip="git add . && gc -m 'WIP [skip ci]' --no-verify"
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

# TF
alias tfplan-master="aws-vault exec vr-master -- terraform plan -parallelism=100 -out plan.out"
alias tfplan-prod="aws-vault exec vr-prod-role -- terraform plan -parallelism=100 -out plan.out"
alias tfplan-staging="aws-vault exec vr-staging-role -- terraform plan -parallelism=100 -out plan.out"
alias tfapply-master="aws-vault exec vr-master -- terraform apply plan.out"
alias tfapply-staging="aws-vault exec vr-staging-role -- terraform apply plan.out"
alias tfapply-prod="aws-vault exec vr-prod-role -- terraform apply plan.out"


# HELP
alias halp='echo "halp_aws_accounts, halp_sqs"'
alias halp_aws_accounts='echo -e "test=944328028601 prod=9999 cat=9999"'
alias halp_sqs='echo "av exec capps-cat-admin -- aws sqs send-message --queue-url=https://sqs.us-west-2.amazonaws.com/944328028601/thie_queue --message-body \"{}\""'

# DOCKER
alias dockerdown="docker stop $(docker ps -a -q)"

alias vi=vim
alias cat=bat

eval $(thefuck --alias)

alias dateme="deno eval 'console.log(new Date().toISOString())' | pbcopy && pbpaste && echo | echo anytime baby 💋"
alias epochme="deno eval 'let d = new Date(); console.log((d.getTime()-d.getMilliseconds())/1000)'"
alias guidme="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
alias hashme="git rev-parse --short HEAD |  pbcopy && pbpaste && echo"

function epochconvert() { echo $1; EPOCH=$1 deno eval 'let t=process.env.EPOCH; let d = new Date(t*1000); console.log(d.toString());' }

export PATH="/Users/barendb/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
