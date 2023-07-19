1. If you don't care about the history of the branch you are trying to merge you can squash it and bring all the commits to the main branch as a single commit.
2. Now you must understand that this is not a merge commit, as there is only one parent for this commit, which is the main branch.
3. Once done you can delete the branch and you are left with a linear history of the repo.
4. You should use this only for short lived branches with bad history.
``` shell
git merge --squash <branchName>
# Use the --squash flag to Squash and Merge.
```
5. All these changes would be in your staging area, you need to commit them.
6. Also squashed branches are not present in the merged branches.
``` shell
git branch --merged
# Squashed branches won't be here because technically we don't have a merge     # commit to link these two branches together.
```
7. So it is important that you delete the branch after squashing and merging the code, because it will show up in this command.
``` shell
git branch --no-merged
# Squashed branches will show up here.
```
8. To add insult to injury when you try to delete it with -d flag it will say it has not been merged.
``` shell
git branch -d <branchName>
# Error - Branch has not been merged.

git branch -D <branchName>
# Forceful delete.
```
9. Sometimes squash merge can result in conflicts, you might have to use your mergetool.
