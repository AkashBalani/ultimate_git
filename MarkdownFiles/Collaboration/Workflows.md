1. In git instead of having everything centralized into one repo, everyone has a copy of the main repo on their local which they sync with the online repo.
2. There is no point of failure as if the online repo is down we can still sync code with each other.
3. You can either host the online repo on a local server or cloud options such as Github, GitLab, etc.

### Centralized Workflow
1. You clone the repo make some changes and push the code to the server.
2. If someone wants to work on that code they can pull the code resolve conflicts and push the code to the server.
3. Everyone in this system as push right to the server.

### Integration-Manager Workflow
1. Mainly used for open-source projects.
2. There is always a Maintainer who has the push access because they don't know the contributors.
3. In such a case you must fork the repo into your github. Then you clone that repo make changes and push to your copy of the repo on your cloud.
4. The you generate a pull request to the maintainer to review your code.
5. Then the maintainer can pull in our changes review them, merge them and push them to the main.