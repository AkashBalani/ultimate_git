1. You would usually want to ignore files like lock files and binary files.
2. Think of vales or files you don't want to synchronize with other developers.
3. You create a gitignore file.
4. You can include file/folder names as well as patters.
5. Ignored files will not be staged.
6. Once a file has been committed it won't be ignored.
7. You have to go in have remove the file from the staging area.
8. To do that type in the following command
``` shell
git ls-files
```
9. Now, we could use the git rm command to remove the file from the staging area. But that would also remove it from the working directory.
10. Remember that index is another name for staging area.
``` shell
git rm --cached -r folder/
```
11. In the above command we use --cached to remove only from the index and -r to recursively remove files and folders from the folder directory.
12. Remember that you have to commit to the local repo about the deleted file.
13. Once removed from the index and ignored, git will not longer track that file/folder.
14. In Java it's a good idea to ignore all the class files. See reference.

### References
1. [Git Ignore](https://github.com/github/gitignore)