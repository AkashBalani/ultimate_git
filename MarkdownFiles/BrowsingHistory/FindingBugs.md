1. If you want to see the difference made between two state for bug finding purposes you can use bisect.
2. For Bisect we have to mention the good state where the code was stable and the bad state where code become unstable.
3. To start bisect use the following command
``` shell
git bisect start
```
4. Once started you can tell git if the current commit is a bad commit with the following command.
``` shell
git bisect bad
```
5. To give a good commit use this.
``` shell
git bisect good <Hash Abbreviated>
```
6. Once you do that "refs/bisect/bad" pointer will point to the bad commit and "refs/bisect/good" pointer will point to the good commit.
7. HEAD would be inbetween these two.
8. Now we can check if the code is running with the current state of head.
9. If it is running we know that problem got introduced between HEAD and bad commit.
10. Based on this analysis you can type either of these commands.
``` shell
git bisect good
# good to HEAD is OK
git bisect bad
# HEAD to bad is OK
```
11. Based on this the search area will be narrowed and we will eventually find the bad commit.
12. When you do find the bug git will display the commit details.
13. To get out of the bisect tool use the following command.
``` shell
git bisect reset
```
