# 1. Create a GitHub repository called Tokyo.
# Go to github and create or
git init .

# 2. Clone this repo in two different folders: John and Amy. 
# We are trying to simulate two users collaborating on this repository.
cd ..

mkdir John
cd John
git clone <URL of repository>

mkdir Amy
cd Amy
git clone <URL of repository>

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

