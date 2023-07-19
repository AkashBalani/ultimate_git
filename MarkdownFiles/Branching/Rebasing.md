1. There is an option to rebase your branch to another commit so that when can merge using Fast forward.
2. Rebase does change your history though.
3. Use rebasing only if repo and the branch are local to your code, if it is shared it might create problems.
4. Git itself will create those two branches on the main line and then sometime in the future git will remove those branches as you can't access them after rebasing.
5. Before rebasing you have to switch to your branch.
``` shell
git switch <branchName>

git rebase master
# We are telling git to change the base of this branch to the last commit on master.
```
6. What this would do is create new commits on the main branch identical to the ones in the branch and then point the HEAD to that commit.
``` shell
git switch master
# Switch to master

git merge <branchName>
```
7. If you run into merge issues you have to resolve them and then type the following command.
``` shell
git rebase --continue
# To continue the rebase process

git rebase --skip
# To skip the current commit/conflict

git rebase --abort
# Aborts the rebase process.
```