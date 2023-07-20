1. Similar to tag, all branches are private and local by default.
2. So you have to explicitly push that branch to remote for collaboration.
``` shell
git branch -C branchName
# Create a new branch

git push
# Error - no upstream branch
```
3. No upstream branch means on remote there is no one tracking this branch.
``` shell
git branch -r
# Shows the remote pointers.
# You branch should be present here if it is being tracked.
```
4. So when you are pushing the branch for the first time on git you type this command.
``` shell
git push -u origin branchName
# -u is for set upstream option.
# origin is the remote repo here
# branchName is the branch we are pushing to remote.

git push -d origin branchName
# -d is for deleting the file from origin repo.
# The branch would still be present on the local repo.

git switch master

git branch -d branchName
# Deletes the branch from the local repo.
```