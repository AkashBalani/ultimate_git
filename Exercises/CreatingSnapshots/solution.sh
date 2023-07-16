# 1. Initialize a new repo. Add two file in your working directory.
git init .
echo hello > file1.txt
echo world > file2.txt

# 2. View the status of the working directory and the staging area.
git status
git status -s

# 3. Stage both files.
git add file1.txt file2.txt

# 4. View the changes in the staging area.
git diff --staged

# 5. Create a commit.
git commit -m "Create two file"

# 6. View the list of Commits
git log
git log --oneline

# 7. View the content of the last commit.
git show HEAD

# 8. Update one of the files. View the changes in the working directory.
echo ! >> file2.txt
git diff

# 9. Stage the changes.
git add .

# 10. Unstage the file.
git restore --staged file1.txt