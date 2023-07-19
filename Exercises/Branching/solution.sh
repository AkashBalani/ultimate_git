# 1. Create a new branch called feature/login. Switch to the new branch.
git switch -C feature/login

# 2. Show all the branches
git branch

# 3. Update file1.txt in the current branch (feature/login) and make a new commit.
echo hello >> file1.txt
git commit -am "Modified file1.txt"

# 4. Show the commits across all branches.
git log --oneline --all

# 5. Switch back to the master branch. Show the commits in the feature branch that don't exist on master
git switch master
git log master..feature/login

# 6. View the differences between master and feature/login.
git diff master..feature/login

# 7. Merge feature/login into master.
git merge feature/login

# 8. View the merged and unmerged branches
git branch --merged
git branch --no-merged

# 9. Delete the feature branch.
git branch -D feature/login

# 10. Create a new branch feature/logout. On this branch, write blue to file1.txt and make a commit.
git switch -C feature/logout
echo blue >> file1.txt
git commit -am "Modify file1.txt"

# Switch back to master, write green to file1.txt and make another commit.
git switch master
echo green >> file1.txt
git commit -am file1.txt

# Try to merge your feature branch into master. You'll see a conflict. Resolve the conflict by accepting both changes. When you're done merging, delete the new branch.
git merge feature/logout
git mergetool
git add file1.txt
git commit
git branch -D feature/logout

# 11. Create a new branch called bugfix/login. On this branch, write orange to file1.txt and make a commit.
git switch -C bugfix/login
echo orange >> file1.txt
git commit -am "Orange in file1.txt"

# Switch back to master, write green to file2.txt and make another commit.
git switch master
echo green >> file2.txt
git commit -am "Green in file2.txt"

# View a graph of your branches. You'll see divergence.
git log --oneline --all --graph

# Rebase the new branch on top of master
git switch bugfix/login
git rebase master

# View the graph of branches again. Note that the divergence is gone.
git log --oneline --all --graph

# Do a fast-forward merge to bring the changes in the bugfix branch into master.
git switch master
git merge bugfix/login