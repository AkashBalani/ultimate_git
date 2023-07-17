1. To find all the contributors on the current project type the following command.
``` shell
git shortlog

git shortlog -n
# Sort the output according to the number of commits per author

git shortlog -s
# Suppress commit descriptions, only provides commit count.

git shortlog -e
# Show the email address of each author.

git shortlog -n -s -e --before=""

git shortlog -n -s -e --after=""
# Before and After flags works as well here.
```
