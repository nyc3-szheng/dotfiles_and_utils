export PATH=$PATH:/usr/local/git/bin:/usr/local/bin:/usr/local/share/dotnet
source ~/.bash_profile
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


### SAFE RM 
alias rm='$(PWD)/rm.sh'


### GCLOUD
# Gcloud SSH
function gcloud-tunnel(){
  gcloud compute ssh $1 --ssh-flag="-L $2:localhost:$2"
}

alias gssh="gcloud compute ssh $1"

alias gcompute="gcloud compute"
alias gcp="gcloud compute copy-files $1 $2~"
