Step 1: Fetch the changes (saving the target branch as FETCH_HEAD).

git fetch origin master

Step 2: Checkout the source branch and merge in the changes from the target branch. Resolve conflicts.

git checkout feature/use-sample-config 
git merge FETCH_HEAD

Step 3: After the merge conflicts are resolved, stage the changes accordingly, commit the changes and push.

git commit

git push origin HEAD

Step 4: Merge the updated pull request.
