1. If the commit has already been pushed to the remote then we have to assume that people have started to work on it.
2. In such a case we can use the revert command which you create another commit which undos our work.
``` shell
git revert HEAD~1
```
3. But if we have not pushed our code to remote then we can reset our local repo.
``` shell
git reset --hard <Target position where we want our head pointer>

git reset --hard HEAD~1
# Going back one commit.
```
4. If you do a --soft reset only the HEAD pointer moves back a position or to the position you specified. The changes you made in the commit are still present in the staging area and working directory.
5. Now, if you select the --mixed reset option, git would copy the HEAD pointer to the staging area. What this means is that you have the changes from the previous commit only in your working directory. 
6. Finally, when you select the --hard option git would copy the latest snapshot and paste it on top of the working directory. Now, technically speaking all your changes are lost.
7. Again, to drill down the point further.
	1. Soft - Removes the commit only
	2. Mixed - Unstages files
	3. Hard - Discards local changes.

# Workflow
1. You do a soft reset on the previous commit. Files are still present in the staging area.
``` shell
git diff --cached
# Show the difference between stage and repo.

git log --oneline --all --graph
# Commit should not be present here

git reset --mixed HEAD
# Copies the current HEAD to the staging area. Also,

git reset HEAD
# This command accepts default as mixed.
# Changes still present in the working directory.

git diff
# Shows the difference between working directory and the staging area.

git reset --hard HEAD
# Local changes gone, clean working directory.
```