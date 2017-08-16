### Show commits from the current branch branched from ..master
```bash
git log --no-merges --pretty='%C(yellow)%h%d %Creset%an %Cgreen%ar:%Creset %s' --graph master..
```

### Formatting
```bash
git log $1...$2 --pretty=format:'+ [view commit](<repo>/commit/%H) &bull; %s ' --reverse | grep -v Merge
```


### Filter

```bash
git log --oneline --all --no-merges  --grep "(.*).*$" --perl-regexp --decorate --color --format="%h: %s (%an)"
```
