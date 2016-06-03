function git_distance
  command git rev-list --left-right --count '@{upstream}...HEAD' ^ /dev/null | command awk '
  $1 > 0 { printf "%s+", $1}
  $2 > 0 { printf "%s-", $2}
  '
end
