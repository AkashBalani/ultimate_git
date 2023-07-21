# 1. Create a GitHub repository called Tokyo.
# Go to github and create or
git init .

# 2. Clone this repo in two different folders: John and Amy. 
# We are trying to simulate two users collaborating on this repository.
cd ..

mkdir John
cd John
git clone https://github.com/<UserName>/Tokyo.git

mkdir Amy
cd Amy
git clone https://github.com/<UserName>/Tokyo.git

# 3. Go to John's folder and make a commit. To save yourself from the hassle
# of re-entering your credentials every time you do a push, store your credentials
# in memory, Now, do a push.
cd ..

cd John/
echo Hello > file1.txt
git commit -am "Create file1.txt"

git config --global credential.helper cache

# 4. Go to Amy's folder, and fetch the new commit. View the history and
# see how the remote master branch has moved forward. merge origin/master into
# master
cd ..

cd Amy/
git log --oneline --all --graph
git pull
git merge origin/master into master

# 5. From Amy's folder, create a new branch called feature/login. Make a commit
# on this branch. Once again, you need to configure Git to store your credentials
# in memory because you're in a different repository. The configuration we made
# earlier only applies to John's repository. Now do a push

git branch -C feature/login
echo World >> file1.txt
git config --global credential.helper cache
git switch master
git push -u feature/login

# 6. View the local and remote branches
git branch --all
git remote -vv

# 7. Go to John's folder and do a fetch. View the history. Note the new branch
# Create a local branch and map it to origin/feature/login. View the local and
# remote branches again to make sure your branches are set up properly.
cd ..
cd John/
git fetch origin
git log --oneline --all --graph
git remote add upstream <URL of repo with branch>
git branch --all
git remote -v

# 8. Go back to Amy's folder, make another commit on the feature branch and do a push.
cd ..
cd Amy/
git switch feature/login
echo ! >> file1.txt
git commit -am "Modify file1.txt"
git push

# 9. Back to Jon's folder, pull Amy's changes into the feature branch. View the
# history. The feature branch should be two commits ahead of master.
cd ..
cd John/
git pull upstream feature/login

