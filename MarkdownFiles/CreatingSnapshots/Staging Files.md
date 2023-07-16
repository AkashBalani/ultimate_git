1. Once new files are created they must be tracked and added to the staging area.
``` shell
git status # to see the status
```
2. To add files to the staging area we use the following command
``` shell
git add file1.txt # Single File
git add file1.txt file2.txt # Multiple Files
git add *.txt # All .txt files
git add . # Adds entire directory recursively
```
3. After adding your files to the staging area if you make changes to it after that, they will not be staged.
