1. To view all the commits attached to a file type the following command.
``` shell
git log <Path to File>

git log --oneline <Path to File>
# For ease of readability.

git log --oneline --stat <Path to File>
# Provides stats such as insertions and deletions.

git log --oneline --patch <Path to File>
# Provides the actual changes that took place.
```