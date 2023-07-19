1. If after the merge the code base is faulty we can undo the merge.
2. One option we have is to delete the "Merge Commit" itself, but this would be re-writing history.
3. Another option is to revert this commit, which means that we will create another commit which would cancel out everything Merge Commit does.
4. When resetting the pointer we have three options.
	1. soft - Git restores last snapshot but staging area and working directory are not affected.
	2. mixed - Along with local repo even the staging area now has the last commit, but working directory is unaffected.
	3. hard - Working Directory, Staging and Local repo all contain the last commit.
``` shell
git reset --hard HEAD~1
# This resets the head pointer to the previous commit.
```
5. Once done this you can still go back to the merge commit using this command.
``` shell
git reset --hard <Hash of the Merge commit>
```
6. To revert you can type the following command.
``` shell
git revert -m HEAD
# Here the previous commit on the master is the first parent and commit on the branch is the second parent. We want to point to the first parent.
# Head represents the last commit.
```
7. This will open up a commit message file.