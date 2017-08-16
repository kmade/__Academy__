### Remove tags (remote & local)
git remote set-url origin <new-url>
git push origin :refs/tags/<tag>
git tag -d <tag>
