1. We use the git restore command to get back to a previous state.
``` shell
git restore
```
2. This command makes git restore from a higher environment. For working directory from stage and for staging area from local git repo snapshot.
``` shell
git restore --source=HEAD~1 file1.txt
# From second to last commit restore file1.txt
```