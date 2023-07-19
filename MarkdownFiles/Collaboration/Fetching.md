1. You have to understand that our local repo is not connected to the remote repo.
2. If there are changes on the remote they are not reflected back to your local repo.
3. You have to use the fetch command to download any changes on the remote repo.
4. After fetching git with push the origin/master pointer to point to this new code we fetched to signal our new master on remote.
5. Although origin/master changes positions, local master is still pointing at the same commit.
6. To make sure your current working directory is in sync with origin master type this.
``` shell
git merge origin/master
```
7. This could either result in a Fast Forward if there is a direct linear relationship, other you have to resolve merge conflicts.
``` shell
git fetch origin <BranchName>
# origin would be fetched on the defined Branch.

git fetch origin
# fetches origin in the current repo

git fetch
# Git knows you mean origin.

git branch -vv
# Shows how our local and remote branches are diverging.

git merge origin/master
# To merge master into origin/master.
```