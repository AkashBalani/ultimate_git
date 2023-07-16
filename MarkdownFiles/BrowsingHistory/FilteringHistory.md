1. If you want to see the last 3 commits type the following command.
``` shell
git log --oneline -3
```
2. To filter based on the author use this command.
``` shell
git log --oneline --author="Someone"
```
3. You can also use date to filter like so,
``` shell
git log --oneline --before="2020-08-17"
# Date format is YYYY-MM-DD
git log --oneline --after="2020-08-17"
```
4. Now you can also enter relative time.
``` shell
git log --oneline --after="yesterday"
git log --oneline --after="one week ago"
```
5. We can also filter based on the commit message if it contains a pattern.
``` shell
git log --oneline --grep="GUI"
# CASE - SENSITIVE
```
6. We can also filter history by content, see the below command and its patterns.
``` shell
git log --oneline -S"Content"
# CASE - SENSITIVE
```
7. Now if you want to see the changes made in that commit you can do something like this.
``` shell
git log --oneline -S"Content" --patch
```
8. To get history of a range of commits you can do something like this.
``` shell
git log --oneline <Intial part of Hash of left side>...<Hash of the right side>
```
9. To find history of all the commits that have touched a file use the following command.
``` shell
git log --oneline file1.txt
# If you get an error "Ambigous File Name" use the below command
git log --oneline -- file1.txt
```
10. If you want to see the actual changes to each of these commits we can add the patch flag to this.
11. Remember, patch should be placed before the file name because git will assume everything after -- as the file name.
``` shell
git log --patch -- file1.txt
# patch before file name
```