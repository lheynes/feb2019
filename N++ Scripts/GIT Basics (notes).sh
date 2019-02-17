GIT BASIC WORKFLOW:
1. Make Changes to File and save
2. Add file to staging Index with the GIT ADD command (this get the file ready for syncing to remote repo)
3. Commit the file to the staging index with the GIT COMMIT -M "message about changes made" command (this will commit the changed file to the staging area)
4. Push the changed file to the remote repo with the GIT PUSH command (this will replicate the changed file from your local working directory to the remote GITHUB repo)

git init              	// Initialise local Git Repository
git add <file>       	// Add File to Index (staging area)
git status          	// Check Status of Working Tree
git commit -m         // Commit changes in Index
git commit 	  file name' 'file name' 'file name' // To commit multiple files
git commit -a     	// To  add & commit changes to files in one go
git push          // Push to remote Repository
git pull         // Pull latest from remote Repository
git clone       // Clone Repository into a new Directory
git checkout -- <file name> // discards changes made to a file, to be used before file is added to staging
git reset HEAD <file name> OR git rm --cached <file name> // removes a file from the staging area before it has been committed to the Index
.gitignore file             // file names which are listed in here will be ignore when running git add command