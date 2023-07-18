1. We have 2 kinds of merges,
	1. Fast-forward merges.
	2. 3-way merges.
2. Fast-forward merges: If there is a direct linear path from master to the branch, we just fast-forward master to the branch pointer. We delete the branch pointer after that.
3. 3-way merges: When you have some commits on branch and you commit in master as well. Git creates a new commit based on the 3 views, before the diversion and the 2 views of the diversion. 
4. Based on them git creates the latest code and creates a commit called "Merge commit"