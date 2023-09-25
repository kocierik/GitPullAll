#!/bin/bash

main_branch=false

while getopts "m" opt; do
  case $opt in
    m)
      main_branch=true
      ;;
    \?)
      echo "Usage: update-repos [-m]"
      exit 1
      ;;
  esac
done

find ~ -name ".git" -type d -exec bash -c '
  repo_dir="{}"
  repo_parent_dir="$(dirname "$repo_dir")"

  echo "Updating repository in $repo_parent_dir"

  cd "$repo_parent_dir"

  if [ "$main_branch" = true ]; then
    git switch main || git checkout main
    git pull
  else
    git pull
  fi

  echo
' \;
