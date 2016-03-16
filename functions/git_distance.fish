function git_distance -d "Check how far in front/behind a branch is from origin master"
  command git rev-list --left-right --count 'HEAD...@{upstream}' ^ /dev/null | awk '
  $1 > 0 { printf "%s∧", $1 }
  $2 > 0 { printf "%s∨", $2 }
  ' 
end
