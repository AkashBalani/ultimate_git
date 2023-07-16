1. We have a local version of the database in the .git folder.
2. Once make changes we commit them to the database.
3. Git has an intermediate step between code change and commit which is called Staging Area.
4. Which should be kept for the next commit.
5. Staging area gives the user a chance to look at the changes before committing them.
6. If we don't like some changes we can unstage them and stage them later for another commit.
7. Once we commit our files the staging area is not empty.
8. Staging area contains either your last commit or the latest state of the project.
9. Also to remove files we still use the add command.
10. Each commit contains the following fields
	- ID
	- Message
	- Date/time
	- Author
	- Complete Snapshot
11. Key thing to remember here is that get compresses the content and doesn't store duplicate content.