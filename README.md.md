## Introduction
1. Git is the most popular Version Control System.
2. A Version Control System records the changes we make to code base in a database called a repository.
3. Through history we can easily debug/restore our system to a previous state.
4. There are two types of Version Control Systems, Centralized and Distributed.
5. Centralized has one local server to push and pull from.
6. Examples of this include Subversion and Microsoft Team Foundation Server.
7. Single point of failure
8. In Distributed systems we store a local copy of the project as a snapshot. If the central server is down we can synchronize our work through this.
9. Examples include Git and Mercurial.

## Using Git
1. The command line
2. Code editors and IDE (GitLens)
3. GUI Clients

## Installing git
``` shell
brew install git
```

### Configuring git
1. These are the settings we must take care of after install git for the first time.
2. Name, Email, Default Editor, Line Endings.
3. We can configure these settings on three levels.
4. SYSTEM - For all users
5. GLOBAL - For all repositories of the current user
6. LOCAL - For the current repository
``` shell
git config --global user.name "UserName"
git config --global user.email Email@address.com
```
7. Use the above command to set the username on the global level.
8. 