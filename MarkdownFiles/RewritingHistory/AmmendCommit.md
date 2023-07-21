1. For commits in which we make minor errors such as typos or accidentally including a file which wasn't meant to be included. 
2. In such a case you can amend or modify the last commit.

# Amend Walkflow
1. You commit something, you forgot to add a line of code.
2. You first need to stage those changes and then type the following command
``` shell
git commit --amend -m "New message old commit"
```
3. Again commit is not really deleted, it will be in the following garbage collection cycle.

1. You included a file in the last commit which wasn't mean to be included.
``` shell
git reset --mixed HEAD~1
# Changes now in your working directory, file is untracked at this point

git clean -fd
# Remove untracked files.

git add .
git commit -m "New commit message old commit"
# Not amending because we have removed the last commit by reset the HEAD
```