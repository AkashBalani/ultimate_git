1. For squashing get the parent of the commit where you want to squash
``` shell
git rebase -i <Hash of the parent-commit>
# in the window put squash in front of the commit here.
```
2. Squashing basically combines your the current commit to the previous commit.
3. If the commits that you want to squash are in different places you would want to re-order the commits first.
4. Once you have suggested the branches you want to squash all the squashed branches will combine into the previous one and you would be directed towards the comment window.
``` shell
# If you want to undo this operation you type this,
git reflog
# And then find the reference you want to change.

git reset --hard <hash or reference>
```

# Fixup
1. Alternatively you might want to keep the message on the parent commit and not give a new message in that case use this
``` shell
git rebase -i <Hash of the parent commit>
```
2. Then put fixup instead of pick infront of those commits.