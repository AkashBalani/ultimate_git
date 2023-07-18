1. If for example you made some changes in bugfix/signup-form class switch to master made some changes and are now trying to switch branches. You will get an error like this.
``` shell
git switch bugfix/signup-form
[OUTPUT]
error: You local changes would be overwritten by checkout
Please commit your changes or stash them.
```
2. Stashing something means storing it at a safe place, but it won't be part of our history.
``` shell
git stash push -m "Message"
[OUTPUT]
Saved working directory and index state On master: Message
```
3. Remember by default untracked files are not included in your stash.
``` shell
git stash push -a -m "Message"
# Use this to add untracked files to the stash.
```
4. To view the list of stashes
``` shell
git stash list

git stash show stash@{index}
# Shows the stash present at that index.

git stash show 1
# Shorthand for stash@{1}
```
5. To apply a stash on the working directory use the following command.
``` shell
git stash apply 1
```
6. To delete a stash use this command.
``` shell
git stash drop 1
# Removes stash at index 1, not 0

git stash clear
# Removes all stashes.
```
