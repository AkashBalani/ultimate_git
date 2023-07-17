1. If you want to view the complete snapshot of our project at any given commit you can type the following command.
``` shell
git checkout <Hash abbreviation>
```
2. Now once you do that you will be in the "Detached HEAD" state.
3. So usually went we commit HEAD points to the master, when we checkout a commit HEAD goes to that commit.
4. In a "Detached HEAD" state it is advised not commit and only view the code.
5. Because once you commit in that state and make HEAD = master, there is no way to reach that commit you made. This is known as a dead commit.
6. Git checks such commits regularly and removes them to make space.
7. Now in the detached state if you type git log you will see the commits upto that point.
8. If you want to see all the commits when detached you can use the following command.
``` shell
git log --oneline --all
```
9. To reset HEAD back to master we type the following command
``` shell
git checkout master
```
