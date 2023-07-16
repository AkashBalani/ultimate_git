1. Below is a unix command to rename a file
``` shell
mv file1.txt main.js
```
2. Git will recognize this as a delete operation and the new file will be untracked.
3. So if you have to stage this change you do something like this.
``` shell
git add file1.txt main.js
```
4. Once you do this git will recognize that you renamed a file.
5. Similar to the git rm, git also has a single command for this operation.
``` shell
git mv file1.txt main.js
```
