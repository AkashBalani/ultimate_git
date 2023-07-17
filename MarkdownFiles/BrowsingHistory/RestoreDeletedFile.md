1. If you accidentally deleted a file and you want to get that back you can the following commands.
2. For this you need to know the commit hash where the file was present, preferably latest.
``` shell
git log --oneline -- <Path to File>
# To find the latest commit where file was present.

git checkout <Commit Hash> <Path to File>
```
3. The File obtained from this will be in the staging area.