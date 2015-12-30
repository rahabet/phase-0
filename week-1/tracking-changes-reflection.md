#Tracking changes reflection

◦ How does tracking and adding changes make developers' lives easier?

  It makes it easier by providing them security meaning that if they are able to track the changes they are making, then they are able to go back and forth with the changes made and have access to all the changes. If developers are working in a group, they can easily know what kind of changes made and who made them so it is an important practice for developers whether working alone or in a group.

◦ What is a commit?

  Commit is ‘saving’ changes you make in a file. every time you make a commit, its like you are capturing a snapshot of the code you are working on so that you can go back to it at any time.

◦ What are the best practices for commit messages?

  It is a best practice to commit messages which are descriptive enough of the situation and why the changes are made. Its also advisable to use present tense. commit messages can be written as a single line message or as a summary but it is better to keep it less than 72 characters.

◦ What does the HEAD^ argument mean?

  HEAD is the commit that you are currently on and HEAD ^ is the last commit you made.

◦ What are the 3 stages of a git change and how do you move a file from one stage to the other?

  1) untracked file. This occurs when we create a new file in a branch and if we check git status after this it says untracked file meaning that we added a file that hasn’t been used yet.

  2) changes not staged for commit. This means that we have a modified file but they haven’t been added so we use a git add command to add them.

   3) Changes to be committed. This means that the file is ready to be committed so by simply using git commit command we save the changes made to the branch.

◦ Write a handy cheatsheet of the commands you need to commit your changes?

   The mainly used once are :
- git status: to check the status of all the files in the local repo
- git add : It is used to stage all of your changes
- git commit -m “message” : is a command to tell git that you have made changes.
- git reset HEAD : to remove a file from the added section
- git push : pushes the changes to a remote branch such as Github

◦ What is a pull request and how do you create and merge one?

  Pull request is a way of telling others about the changes you pushed to the Github repository.

  To create a pull request,
- You go to the Github repository and click on  “pull request” button assuming there is a change committed to the branch.
- Then pick the branch you wish to have merged using the “ base branch” dropdown
- You can write title and description for your pull request
- Finally click on “send pull request’ button.
- If you are the only one working on the project and get the green “merge pull request” button then click on that to merge the changes back to master. other wise wait for someone else to merge it.

◦ Why are pull requests preferred when working with teams?

  pull requests are preferred because they can give a chance for other peoples to review the code and able to discuss if there is a potential modification to the code prior to merging it to the master.