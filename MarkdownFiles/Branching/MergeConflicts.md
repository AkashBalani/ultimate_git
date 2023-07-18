1. Conflicts can arrive in any of the following ways,
	1. If same line of code is changed across two branches
	2. If a file is changed in one branch and deleted in another branch.
	3. Same file is added across two branches but the content of this file is different.
2. In such cases git will stop the merge and ask you for assistance.
3. Also once a conflict is detected by your command you will be jumped into the conflict area.
``` shell
git status
# Shows unmerged paths:
# Contains the file causing conflicts
```
4. Now if you go in that file it will have commits from both the files.
5. Within VSCode you can either click "Accept Current Change" or "Accept Incoming Change" to pick either of those commits.
6. You can also select "Accept Both Changes"
7. If you are manually resolving conflicts remember to remove the markers for both the commits.
8. Ideally, you should not introduce any new lines of code during this resolution phase.
9. Such a change is call "Evil Commit" because it's introducing changes that didn't exist in any of these branches.
10. But in reality you might have to be evil sometimes because of other constraints.
11. Once done you need to add this file to the staging area.
12. You can then commit the file to the local repo.