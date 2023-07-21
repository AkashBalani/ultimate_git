1. Again we use this when we have already shared the code with the public.
``` shell
git revert HEAD~3..HEAD
# Revert git from HEAD to HEAD~3
# Or go back 3 commits.
# Heads up, that would return all the commits from HEAD to HEAD~2 inclusive.
```
2. That command would add three commands for the three commits we reverts which make our history not so perfect.
3. We can do this in a single commit like so,
``` shell
git revert --no-commit HEAD~3..HEAD
# Reverts the last 3 commits in the staging area without committing.

git revert --no-commit HEAD~3..
# Git knows you mean HEAD

# You can pick either of these options
git revert --abort
# Don't like it

git revert --continue
# Brings you to the commit message area.
```
4. This creates just one commit and maintains a relatively good history compared to 3 commits.
5. Usually after this you want to push the code to the origin.