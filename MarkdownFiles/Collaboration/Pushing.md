1. When you push the code to the remote repo, its master gets updated then the origin/master on your local repo get updated.
``` shell
git push <Remote repo> <Branch you want to push>

git push origin master
# We want to push our master granch to origin remote repo.

git push origin
# Git will push the current branch

git push
# Git Knows you mean origin.
```
2. If you are doing this for the first time you might have to enter your github credentials.
3. There are times when git won't let you push your work to the remote because remote and local repo's have diverged.
``` shell
git push -f
# Terrible idea! - Drop other people's changes.
```
4. In such a case we first pull the code from the remote, merge our code and create a merge commit. Push the code to the remote repo.