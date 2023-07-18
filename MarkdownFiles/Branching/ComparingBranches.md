- Before merging if you want to compare branches you can use this command.
``` shell
git log master..bugfix/signup-form
# Show me all the commits in bugfix/signup-form that are ahead of master.

git diff master..bugfix/sigup-fomr
# Show me all the changes between these two branches.
```
- If you are on master you can view the difference with this shorter commmand.
``` shell
git diff bugfix/signup-form

git diff --name-status bugfix/signup-form
# Shows only the files that are being affected with their status.
```