1. So when the original source code changes, you don't automatically get those changes in your forked copy.
2. We can create a pointer on the source code to pull it in our working directory and then push it to our forked copy.
``` shell
git remote -v
# Shows two channels fetch and push both mapped to the same url.

git remote add upstream <URL of gitRepo>
# Add base/original code as the upstream remote tracking branch.

git remote rename upstream base
# Rename upstream to base if you want.

git remote rm base
# Remove remote tracking branch base.

git fetch base
# To get the latest changes from the base/original branch.

git switch master
# You probably want to switch to master because in the next line we are,

git merge base/master
# Merging our master into origin's master.

git push
# Pushing changes into our forked repo.

git switch <branchName>
# Switch to the branch you wish to merge

git merge <branchName>
# Merge it.
```