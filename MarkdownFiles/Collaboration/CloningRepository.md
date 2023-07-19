``` shell
git clone <Repo URL>
# This will create a dirctory with the repo name and all the code will be in that

git clone <Repo URL> UserDefinedName
# Change default name to something you can define.
```
1. When we clone a repo, the source repo on cloud is named as origin.
2. origin/master, tell us where the remote master is, you can't switch to it though.
3. origin/master is a remote tracking branch.
4. origin/HEAD tells there the remote HEAD is.
``` shell
git remote
# Shows the list of remote repositories.

git remote -v
# -v for verbose output.
```
1. A remote repo is a repo not on our system.
2. This is the repo git will communicate with when we say remote.