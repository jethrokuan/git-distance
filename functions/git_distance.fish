function git_distance -d "Check how far in front/behind a branch is from origin master"
  if test ! -z (git remote | grep "origin")
    set -l git_right_stat (
    command git rev-list --left-right --count 'HEAD...@{upstream}' ^ /dev/null | awk '
    $1 > 0 { printf "%s∧", $1 }
    $2 > 0 { printf "%s∨", $2 }
    ')
    
    echo -n -s $git_right_stat
  end
end
