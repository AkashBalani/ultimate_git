1. By default the push command doesn't share are tags with the remote.
``` shell
git push origin <tagName>

git push origin --delete <tagName>
# To delete the tag from the remote.
# Although the tag would still be in the local repo.

git tag -d <tagName>
# To delete the tag from the local repo.
```