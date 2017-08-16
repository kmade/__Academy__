## USE WITH CAUTION

If you've done a git add (files) and then commit them to the wrong branch, backing that out is easy:

```bash
git reset --soft HEAD~1
```

- reset from remote

```bash
git reset HEAD --hard
```

- reset from local staged 

```bash
git reset --hard origin/master
```
- match the remote branch:

```bash
git fetch origin
git reset --hard origin/<branch>
```
> Stash before doing this or save you work
