1. To discard changes from the local working directory use the following command.
``` shell
git restore file1.txt
# Notice that we are not using the --staged flag
# You can enter multipe files and regular expressions.
```
2. This command removes all the changes in the working directory.
``` shell
git restore .
```
3. Remember if a file in untracked git can not get its previous state.
4. To remove all the untracked files using the command below.
``` shell
git clean
```
5. Git initially will give an error because once these files are removed they are not coming back. Also you have to specify some flags with it.
``` shell
git clean -f -d
# -f flag is for forced cleaning
# -d flag is for directories
```