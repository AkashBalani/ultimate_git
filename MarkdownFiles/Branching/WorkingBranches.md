``` shell
git branch bugfix
# Creates a new branch 'bugfix'.

git branch
# Shows the list of branchs.

git status
# If you are confused which branch you are on, use this command.
# [Output]
# On branch <branch-name>

git switch bugfix
# Switchs the current working directory to track 'bugfix' branch/pointer.

git branch -m bugfix bugfix/signup-form
# Changes the branch name from bugfix to bugfix/signup-form
```
- To view commits across all branches use the following command.
``` shell
git log --oneline --all
```
- To delete a branch type the following.
``` shell
git branch -d bugfix/signup-form
# Might throw an error if you have not merged it.

git branch -D bugfix/signup-form
# To forcefully delete a branch.
```