1. Now the status commands only tells us the files which have been changed what if we want to check what lines have been changed?
2. Use the following command to check what changes have been staged.
``` shell
git diff --staged # --staged tells us that this only for index.
```
3. This is the output you will get
``` shell
[Output]
diff --git a/file1.txt b/file1.txt
# These are the files we are comparing.
# a/file1.txt is the same file but last commit.
# b/file1.txt is the same file but updated and in the staging area.
--- a/file1.txt
+++ b/file1.txt
# Changes made in the older commit is represented by 3 minus
# Changes made to the same file in the upcomming commit are represented by 3 plus

# Now if you didn't make alot of changes git will show you the snippet of changes instead of the whole file.

@@ -1,3 +1, 5@@
# -1 indicates the older commit and +1 the newer commit.
# From the first file 3 lines are extraced and shown while for the second file 5 lines are extracted (as it as 2 additional lines).

 hello
 world
 test
+sky
+ocean
# Plus sign indicates these lines have been added.

diff --git a/file2.txt b/file2.txt
# Next round of changes
new file mode 100644
# Indicates new file has been created
--- /dev/null
+++ b/file2.txt
# The /dev/null indciates that this is a new file and not present in the local repository.
@@ -0,0 +1 @@
# Indicates starting from line zero, zero lines
```
4. To see instead the changes between the working directory and the staging area type the following command.
``` shell
git diff # The output would be similar to git diff --staged just for the working # directory
```