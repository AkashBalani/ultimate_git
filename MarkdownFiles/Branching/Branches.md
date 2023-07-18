1. Branching allows us to diverge from the main line of work and work on something else in isolation.
2. Conceptually you can think of a branch as an isolated workspace.
3. TL;DR think of a branch as a different folder than master.
4. Once we are done with our experiments we can combine are code back to master this is called as merging.
5. Master should be kept as stable as possible.
6. When we create a new branch git creates a new pointer that can be moved around.
7. This pointer is tiny file that contains a 40 byte commit ID.
8. Think of it like this when you create a branch and start committing, feature moves on from master and takes HEAD along with it. 
9. Usually master moves along with head, in this case it will move with the branch.
10. When we reset we switch back to master as our current working directory.
11. Remember, there is only one working directory.
12. HEAD again is itself a very tiny file that contains the current working directory, refs/heads/master for example.