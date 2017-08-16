// show commits from the current branch branched from ..master
git log --no-merges --pretty='%C(yellow)%h%d %Creset%an %Cgreen%ar:%Creset %s' --graph master..

git log $1...$2 --pretty=format:'+ [view commit](<repo>/commit/%H) &bull; %s ' --reverse | grep -v Merge
