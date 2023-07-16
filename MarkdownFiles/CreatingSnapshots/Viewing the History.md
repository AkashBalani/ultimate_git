1. Use this command to get our commit history.
``` shell
git log
```
2. Each commit will be shown with the following values
	1. Commit Hash
	2. Author with email address
	3. Date of the commit
	4. Commit message.
3. On the top you will this (HEAD -> master), which mean that the HEAD is pointing to the master.
4. HEAD is a reference to the current branch.
5. Use space to go to the next page in the log output.
6. Use this command to get the logs in oneline.
``` shell
git log --oneline
```
7. If you want to see the first commit on the top and subsequent commits after it use this command with the --reverse flag.
``` shell
git log --oneline --reverse
```
