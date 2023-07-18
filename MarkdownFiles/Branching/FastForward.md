``` shell
git log --oneline --all --graph
# It's better to use the --graph flag when working with branches as it shows how # branches are related.

git merge bugfix/signup-form
# This will merge in Fast-forward fashion if there is a linear path.

git merge --no-ff bugfix/login-form
# Telling not to use fast forward, instead create a merge commit and bring the changes into master that way.
```
1. Create a merge commit opens up a window where you can type in your commit message.
2. Pros of Merge Commit
	1. True reflection of history
	2. Allow reverting a feature (As it literally contains all the commits)
3. Cons of Merge Commit
	1. Pollutes the history
``` shell
git config ff no
# To disable fast forward in the current repository.

git config --global ff no
# To disable fast forward in all repos.
```