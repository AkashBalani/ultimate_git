1. You can use any of these graphical Merge tools
	1. Kdiff
	2. P4Merge
	3. WinMerge (Windows Only)
2. As a demo we would be working with P4Merge.
3. To configure p4merge as your merge tool type the following command.
``` shell
git config --global merge.tool p4merge
# We assigned this p4merge name, this could be anything we want.
```
4. Next we need to tell git where to find p4merge.
``` shell
git config --global mergetool.p4merge.path "/Applications/p4merge.app/Contents/MacOS/p4merge"
# Mac and Linux are case-sensitive.
```
5. Now once you run into a merge conflict, you can type the following command.
``` shell
git mergetool
# This would open up p4merge.
```
6. p4merge might create artifacts with .orig extension for original backups. Usually they are created during the merge process.
7. If you want the merge tool not to keep backups you can type the following command.
``` shell
git config --global mergetool.keepBackup false
```