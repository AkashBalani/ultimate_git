1. If you want to view how the file looks like after the commit use this command
``` shell
git show HEAD~2<path to file on local>
# This will show the final version of the file after being staged.
```
2. If you want to see the files that have been changed in this commit use the following command.
``` shell
git show HEAD~2 --name-only

git show HEAD~2 --name-status
# Displays the status as well.
```
