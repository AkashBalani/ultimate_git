1. If you want to bring in commits from a branch without merging it into main you can use Cherry Picking.
``` shell
git cherry-pick <Hash of commit>
# Might result in merge conflicts.
# Will bring changes to the staging area.
```