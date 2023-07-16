1. What exactly we have change within a commit use the following command.
``` shell
git show <Enter Initial SHA of commit>
```
2. Important thing to note here is that we can enter as less of SHA commit letters as we want as long as they can be differentiated.
3. You can see the latest commit using the below command.
``` shell
git show HEAD
```
4. Subsequently we can get an commit with respect to the latest commit like so.
``` shell
git show HEAD~1
# Second to last commit
git show HEAD~2
# Third to last commit
```
5. The output of this command is the same as that of git diff the only difference is the fact that we only interact with that commit.
6. To see what a file looks like for this commit you can run the below command.
``` shell
git show HEAD~1:.gitignore
```
7. In the above command we are trying to look for the .gitignore file in the second to last commit.
8. Remember the fact that each directory contains a complete snapshot of the repository.
9. To see all the files in a commit use the command below.
``` shell
git ls-tree HEAD~1
```
10. Tree is a data structure used to represent hierarchal data models.
11. You get an output in this format
	1. Some Number (Permissions I guess)
	2. Type of Object (Blob/Tree)
	3. Hash (Generated based on the file content)
	4. Filename.
12. You can view content of an object using the following command
``` shell
git show <Hash>
# Use only the initial characters to differentiate.
```
13. The following are the expect git object types,
	1. Commits
	2. Blobs (Files)
	3. Trees (Directories)
	4. Tags