1. If you want to see changes across two or more commits you can use the following command.
``` shell
git diff HEAD~2 HEAD
# Checking changes from thrid last commit to the latest commit.

git diff HEAD~2 HEAD file.txt
# Shows the same thing now only for the file.txt
```
2. We can also filter based on the author name, status, file name and so on.
``` shell
git diff HEAD~2 HEAD --name-only

git diff HEAD~2 HEAD --name-status
```