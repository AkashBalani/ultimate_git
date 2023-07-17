1. You can find the author of a particular line by using blame command.
``` shell
git blame <Path to file>

git blame -e <Path to file>
# Replace email with name of the author.

git blame -e -L 1,3 <Path to file>
# This will show only the first three lines.
```
2. The output of this would contain these fields.
	1. Commit Hash abbreviated.
	2. Author and Time of commit
	3. Line of code