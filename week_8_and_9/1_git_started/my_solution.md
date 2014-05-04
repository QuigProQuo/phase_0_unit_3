## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
<!-- Your defnition here -->
In summary git add, adds file contents to the staging area
	
	In Git, you have to add file contents to your staging area before you can commit the,. If the file is new, you can run git add to initally add the file to your staging area, but even if the file is alread "tracked" - ie, it was in your last commit- you still need to call git add to add new modifications to your staging area.


#### branch
<!-- Your defnition here -->
In summary git branch, lists, creates and manages working contexts
	
	Git branch commands:
		git branch 					- lists your available branches
		git branch (branchname) 	- create a new branch
		git branch -v				- see the last commint on each branch


#### checkout
<!-- Your defnition here -->
In summary git checkout, switches to a new branch conext
	
	Git checkout commands:
		git checkout -b (branchname)	- create and immediately switch to branch
		git branch -d (branchname)		- delete branch



#### clone
<!-- Your defnition here -->
In summary git clone, copies a git repository so you can add to it
	
	If you need to collaborate with someone on a project, or if you want to get a copy of a project so you can look at or use the code, you will clone it.

	Git clone commands:
		git clone [url]		- copies a git repository so you can add to it


#### commit
<!-- Your defnition here -->
In summary git commit, records a snapshot of the staging area
	
	Now that you have staged he content you want to snapshot with the git add command, you run git commit to actually record the snapshot. Git records your name and email address with every commit you make, so the first step is to tell Git what these are using git config.

	Git commit commands:
		git commit
		git commit -m 			- used to provide the committ message on 	the command line
		git commit -a 			- automatically stage all tracked, modified files before the commit


#### fetch
<!-- Your defnition here -->
In summary git fetch, downloads new branches and data from a remote repository

	Git has two commands to update itself from a remote repository. git fetch will synchronize you with another repo, pulling down any data that you do not have locally and giving you bookmarks to where each branch on that remote was when you synchronized.

	Git fetch commands:
		git fetch 				- downloads new branches and data from a remote repository
		git fetch [alias]		- fetch specific ones
		git fetch --all 		- synchronize with all your remotes 

#### log
<!-- Your defnition here -->
In summary git log, shows commit histor of a branch
	
	To understand the log command, you have to understand what information is stored when you run the git commit command to store a snapshot. In addition to the manifest of files and commit message and information about the person who committed it, Git also stores the commit that you based the snapshot on. 

	Git log commands:
		git log						- show commit history of a branch
		git log --oneline			- used to see a more compact version of the same history
		git log --oneline --graph	- used to see when the history was branched and merged

#### merge
<!-- Your defnition here -->
In summary git merge, merges a branch context into your current one
	
	Once you have work isolated in a branch, you will eventually want to incorporate in into your main branch. You can merge any branch into your current branch with the git merge commange.


#### pull
<!-- Your defnition here -->
In summary git pull, fetches from a remote repo and try to merge into the current branch

	This command will basically run a git fetch immediately followed by a git merge of the branch on that remote that is tracked by whatever branch you are currently in.


#### push
<!-- Your defnition here -->
In summary git push, pushes your new branches and data to a remote repository


	Git push commands:
		git push
		git push [alias] [branch]				- push your changes to the remote repo. Which will attempt to make your [branch] the new [branch] on the [allias] remote.
		git push (remote-name) :(branchname)	- delete a remote branch

#### reset
<!-- Your defnition here -->
In summary git reset, undo changes and commits



#### rm
<!-- Your defnition here -->
In summary git rm, removes files from the staging area

	This is a bit different from git reset HEAD which "unstages" files. To unstage means it reverts the staging area to what was there before we started modifying things. Git rm just kicks the file off the stage entirely, so that its not included in the next commit snapshot, thereby effectively deleting it

	Git rm commands:
		git rm file 			- removes files from staging area entirely
		git rm --cached			- leaves the file in the working directory

#### status
In summary git status, views the status of your files in the working directory and staging area

	Git status commands:
		git status			- view the status of your files 
		git status -s 		- view short output


#### All definitions are in thanks to gitref.org ! A wonderful resource that goes a great length to inform it's readers. Also be sure to check out http://git-scm.com/book/commands for further documentation if necessary. 



## Release 3: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally