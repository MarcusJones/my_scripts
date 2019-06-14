# Auto-select defaults for installation pop-ups
export DEBIAN_FRONTEND=noninteractive 
sudo apt update

# Add git-branch highlights
sudo bash -c "cat >> ~/.bashrc <<EOF
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
function markup_git_branch {
  if [[ "x$1" = "x" ]]; then
    echo -e "[$1]"
  else
    if [[ $(git status 2> /dev/null | tail -n1) = "nothing to commit, working directory clean" ]]; then
      echo -e '\033[1;32m['"$1"']\033[0;0m'
    else
      echo -e '\033[1;31m['"$1"'*]\033[0;0m'
    fi
  fi
}
export PS1='\u@\h \[\033[0;34m\]\w\[\033[0m\] $(markup_git_branch $(git_branch))$ '
EOF"
