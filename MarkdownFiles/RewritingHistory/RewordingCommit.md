1. To reword a commit message you run the following command.
``` shell
git rebase -i <Hash of the commit>^
# Use carrot to represent it parent.
```
2. In the interactive window you can change the commit from 'pick' to 'reword'.
3. Git will stop only at the commits you picked to be reword-ed.
4. Again, because of one commit all the subsequent commits also were changed.