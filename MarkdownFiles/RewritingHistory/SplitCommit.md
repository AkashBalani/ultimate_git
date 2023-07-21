``` shell
git rebase -i <Hash of the parent>
# Instead of pick put rebase infront of the commit you want to split
```
1. After this command you would be dropped back to the rebase area.
2. After that you need to reset the change made in this commit with the following command
``` shell
git reset --mixed HEAD~1
# Removed the current commit and pushes head one commit back.
```
3. Make two or more commits now based on your task. Once done type the following command
``` shell
git rebase --continue
```