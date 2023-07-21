1. Rule - "Don't rewrite public history!"
2. If you have pushed commits that are shared with people they are consider public, obviously.
3. Commits in git are immutable, once you create them they can't be changed.
4. Git usually creates a new commit and still keeps the older commit in the database for disaster recovery.
5. Now once we have rewritten our history, if we try to push git will reject our push.
6. Because of merge conflicts.
7. The solution to this would be to merge origin/master into our master with a new merge commit and then push that to github.
8. Such an activity creates non-linear noisy history.
9. Instead of modifying a commit, we ended up creating two commits.
10. Alternatively, you can do something like this,
``` shell
git push --force
```
11. Now this will rewrite history big time.
12. You will essentially force code to be pushed on git. Which means that the commit on origin/main would be dropped and you main will become the origin/master. It's still your main as well.
13. Once done git will attach origin/master to your master as well.
14. This is usually not a good thing, because if someone is working on the previous copy of origin/master their push will be rejected because according to git they have diverged.
15. They can do a git pull and then merge their code with origin/master and then push that.
16. In such a case they have to create one additional commit but it rewrites history.
17. Although it's a good practice to clean up your code before making it public.
18. On your local to change a commit, it's message or even drop it. That's usually recommended.