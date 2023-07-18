1. Typically after merging a branch, the branch is not deleted by itself.
``` shell
git branch --merged
# Shows branches that are merged into the master.
# Such branches are safe to delete unless you are working on them.

git branch -d <Name of Branch>
# Deletes that branch.

git branch --no-merged
# Shows branches that are not merged into the master.
```