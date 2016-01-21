
How does tracking and adding changes make developers' lives easier?
By tacking and adding changes, developer's are able to keep track of the progession on a particular project.  Git's tracking of changed documents allows developer's to keep their "place" while working and sets the stage for committing files to GitHub.

What is a commit?
A commit is like a formal "snapshot" of the work done on a file.  Once a file is commited, changes have been saved and are now ready to be "pushed" to the repository on a remote location (i.e. GitHub) where others can view and interact with the committed work.

What are the best practices for commit messages?
Best practices for commit messages first involve writing a header of no more than 50 characters.  Then, underneath, a body paragraph explaining changes that have been made in the imperative tense.  Instead of writing "Changed code using a 'for' loop", a developer should say "Changes code using a 'for' loop." These body paragraphs should be a decent length and do a solid job of explaining why a change was committed.

What does the HEAD^ argument mean?
HEAD^ is a pointer to the last commit made or the last commit that was checked out on your working directory.  Thus, the HEAD will be the "parent" of the next commit performed.  Simply, using HEAD^ let's you see the snapshot of your last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of git change are the working directory, staging index and repository.  You first enter the working directory by entering the git directory you've cloned from GitHub onto your local device.  Open a file, and now it's in the working directory.  To stage the file, you must use the "add" command.  From there, use the "commit" command to "take a snapshot" and save changes.  Now the file is ready to be "pushed" to a remote site for collaboration.

Write a handy cheatsheet of the commands you need to commit your changes?
1.)Open the master branch of the repository you want to work on in your local device.
2.)Git pull to update.
3.)git checkout -b branch_name to make new branch for changes you'll be working on
4.)Do your coding work
5.)git commit -m "commit message"
6.)git push origin branch_name
7.)git checkout master
8.)git pull
9.)git branch -d branch_name (to clean up the branched changes that were pushed to the remote site)

What is a pull request and how do you create and merge one?
Pull requests allow developers to notify others about changes that were pushed to a repository on GitHub. Once a pull request is sent, team members can review the changes, make modifications and push follow up commits if necessary.
To start a pull request, a developer must first "push" some commited file to the master branch on (for this example) GitHub. Go to the repository you're working from on GitHub and click "Compare & Pull Request." Make sure the "base branch" is master and the "comparison branch" is your new branch. Fill in the title and description appropriately and then click "create pull request." There should now be a linkable page for other developers to review your code. Go to the "conversations tab" and you will now be able to merge your changes by selecting "Merge Pull Request."

Why are pull requests preferred when working with teams?
Like I said before, pull requests notify other developers in a team when changes to a project have been made. This allows for collaboration between team members through the ability to review and modify shared files. Pull requests are what make GitHub so beneficial for developers because they allow committed snapshots to be worked on my a number of people.