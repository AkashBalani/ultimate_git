1. You can also create branches directly on github.
``` shell
git fetch
# To get this branch in our local repo.
```
2. When you do git fetch you only get the new branches with remote tracking.
3. Meaning they show up only when you type 'git branch -r'
4. You need to create a new branch on local and point that to remote's new branch.
``` shell
git branch -C <BranchName> origin/<BranchName>
# First enter local branch name second enter remote branch name.
```
5. Even if you clone the repo you won't get the branches directly you still need to run the command to create a local branch.
6. If someone has pushed their changes to git on this branch you have to pull it.
``` shell
git pull
```
7. Always switch to master before merging any branch on it.
8. Now if you delete a branch on remote others have to pull you code.
9. Once pulled the branch would still be present in local as well remotes on local.
10. Delete the branch using -d flag.
11. To remove remote tracking branches that we are no longer tracking type the following command.
``` shell
git remote prune origin
```
