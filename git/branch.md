## renaming branches remotely


$ git branch new-branch-name origin/old-branch-name
$ git push origin --set-upstream new-branch-name
$ git push origin :old-branch-name

Then, to see the old branch name, each client of the repository would have to do:

$ git fetch origin
$ git remote prune origin



[alias]
  delete-merged-branches = "!f() { git checkout --quiet master && git branch --merged | grep --invert-match '\\*' | xargs -n 1 git branch --delete; git checkout --quiet @{-1}; }; f"
