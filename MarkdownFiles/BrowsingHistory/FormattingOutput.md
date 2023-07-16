1. Git log output can cause eyes to get sore so we can make it look pretty.
2. For this command we have to specify format of the logs we want and git will interpret them.
``` shell
git log --pretty=format:"hello %an"
# This command will find all the commits, replace their logs with hello and then # append it with the author name

git log --pretty=format:"%an committed %H"
# This will show the Author name append by the full Hash of each commit.

git log --pretty=format:"%an committed %h"
# small h for the abbreviated hash

git log --pretty=format:"%an committed %h on %cd"
# cd is for commit date.
```
3. You can also add color to your log output!
``` shell
git log --pretty=format:"%Cgreen%an commited %h on %cd"
# This will make everything starting from the author name as green.

git log --pretty=format:"%Cgreen%an%Creset commited %h on %cd"
# You have to reset the color back to white for the rest of the output.
```

### References:
1. [git log](https://git-scm.com/docs/git-log)