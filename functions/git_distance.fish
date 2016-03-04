function git_distance -d "Check how far in front/behind a branch is from origin master"
  set -l branch (git_branch_name)
  set -l output

  set output $output (echo -n -s "←" (git rev-list --left-only --count origin/master...HEAD 2> /dev/null))
  set output $output (echo -n -s  (git rev-list --right-only --count origin/master...HEAD 2> /dev/null) "→")

  echo $output
end
