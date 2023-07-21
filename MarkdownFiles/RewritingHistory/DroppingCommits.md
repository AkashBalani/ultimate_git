1. While dropping a commit, if that commit introduced a file on which subsequent files made edits to git would throw an error.
2. In such a case you would be landed in the middle of the rebase operation and you would have to resolved conflicts.
``` shell
git rebase -i <Hash of the commit to be dropped>
# Drops you in the rebase interactive window.
# You can either drop the file there or remove the commit althogther.
```
3. In the case mentioned above the file present in your staging area would have DU in its status.
4. D is because we are trying to delete this file and U because we are trying to update it in the next commit also.
``` shell
git mergetool
# Shows the conflicting file and gives option to delete or modify the file.
# If you want to keep that file in the history you type modify.

git rebase --continue
git rebase --abort
# To continue or abort the process.
```