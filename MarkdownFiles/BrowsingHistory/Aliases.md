1. To set aliases in git use the following command.
``` shell
git config --global alias.lg "log --pretty=format:'%an committeed %h'"
# We type a custom command name after the period.
# lg is short for lock, this is what we are setting up.
# Wrapping in double quotes because there is a space our command
# Also replacing inner double quotes with single quotes.
```
2. Defining another alias for unstage which removes files from the staging area.
``` shell
git config --global alias.unstage "restore --staged ."
```