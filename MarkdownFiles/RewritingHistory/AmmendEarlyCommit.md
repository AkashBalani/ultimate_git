1. To amend earlier files to git we can use interactive rebasing.
``` shell
git rebase -i <Hash of the earlier commit>
# We use the i flag to for interactive rebasing.
```
2. This would open up an interactive window which would have the list commits which have been made after this commit.
3. In those you could either pick or edit those commits.
4. Now, this is also important. Git doesn't delete any of those commit, it rather recreates them.
5. So all the commits are recreated and the older copies are then deleted.
6. Again, rebasing rewrites history.
7. After this you would be in the rebase area, there you can make the changes you want and then do 
``` shell
# You need to add your change to the staging area before this.
git commit --amend
# Once satisfied you can run the following command

git rebase --continue
# Continue with the rebase process.
# Throughout the process you can check the logs.

# You can abort the operation whenever you want with this command
git rebase --abort
```
8. After the rebase operation if you check the logs you will notice that the Commit IDs are different.
9. You can verify that the change you introduced is present in all the subsequent commits by this command.
``` shell
git checkout <commit Hash>
```