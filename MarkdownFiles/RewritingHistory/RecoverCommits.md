1. Now, once you execute the reset command you commits won't automatically just vanish.
2. Git will still store those commits for a while and then when the time comes it will delete them using a garbage collector.
3. However, in such a case you can recover your commits for a short while, I don't know how long you have?
``` shell
git reflog
# Show how our head reference has moved since the start.
# The output would contain a sequence of steps with unique identifiers in for each step
# identifier looks like this HEAD@{0}
# Next to it you would see the opertion that has been performed on it
# operation includes reset, commit, etc.
```
4. Now from the output of the previous command you can gather either the hash or the identifier and recover it like so,
``` shell
git reset --hard HEAD@{1}
```
5. reflog can be used to check other branches as well,
``` shell
git reflog show <BranchName>
```