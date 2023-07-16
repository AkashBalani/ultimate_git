1. If you want to remove files from the staging area or if you want to "unadd" them use the following command.
``` shell
git restore --staged file1.txt
# For one File, you can have multiple files as well as some regex expression.
```
2. After this command all the changes for file1.txt are reverted back to the working directory.
3. The restore command essentially takes the copy from the next environment.
4. So if you executed this command on a new file that will be removed from the staging area and will be untracked. Displayed with 2 question marks.