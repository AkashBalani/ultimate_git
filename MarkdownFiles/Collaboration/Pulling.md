1. Pull command basically combines fetch and merge.
2. If you local and remote have diverged, a git pull will result in a merge commit.
3. Master would be pointing to this while origin/master would still be at origin/master.
``` shell
git pull -rebase
# Changes the master to point to origin/master
# Meaning all your changes are after the origin/master commit.

git pull
# If there is a conflict git performs a 3-way merge and drops you to the message area.

git reset --hard HEAD~1
# Go Back one commit.
```