1. Tags are usually used to represent a version of a file.
``` shell
git tag v1.0 <Hash of the commit>
# Here v1.0 is our tag.
```
2. Tag will act kind of like a pointer to that commit.
3. Once tagged you can checkout a commit using that tag.
``` shell
git checkout v1.0
```
4. To list all the tags we have created use the following command.
``` shell
git tag

git tag -m
# Tags with their messages, lightwight tags will have commits message here.
```
5. To delete a tag use the following command.
``` shell
git tag -d <tag name>
```
6. All these are called lightweight tags, because they are just pointers to other commits.

### Annotated Tag
1. Annotated Tags are a complete object with their own properties.
2. Use this to create an annotated tag.
``` shell
git tag -a v1.1 -m "Message"
# -a flag specifys annotated and message must be supplied.

git show v1.1
# To view the tag and the commit associated with it.
```
