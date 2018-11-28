# Coder Academy Cohort Resources
Welcome to the repository for shared notes, challenge solutions, resources and other bits and bobs from Coder Academy's Melbourne bootcamp cohort.

Coding is hard, pushing to GitHub even scarier. The repo is a space to practice and share your stuff with fellow students.

![Study-Group](/assets/study-group.jpg)

Any and all contributions are welcome - consider this our very first open source project!

## Contributors
|[![Linda Lai](/assets/contributors-linda-lai-70x70.jpg)](https://github.com/linda-lai) | [![Vanessa Nimmo](/assets/contributors-vanessa-nimmo-70x70.jpg)](https://github.com/VanessaNimmo) | [![Diego Rodriguez](/assets/contributors-diegorodriguez2018-70x70.jpg)](https://github.com/DiegoRodriguez2018) | [![Timothy Cole](/assets/contributors-timothydcole-70x70.jpg)](https://github.com/timothydcole)| [![Corey Hellwege](/assets/contributors-coreyhellwege-70x70.jpg)](https://github.com/coreyhellwege)
|-----------|---------------|---------------- |---------------- |---------------- |
| Linda Lai | Vanessa Nimmo | Diego Rodriguez | Timothy Cole    | Corey Hellwege 

Please DM me if you'd like to be added to the repo as a contributor.

You'll receive an invite from GitHub which you'll need to accept first to have the correct permissions.

All contributors will have full read/write access so you can push updates straight away.

### Important
**As all contributors automatically have read/write access, please check that you have the latest version of the repository cloned locally to your laptop before pushing changes so existing updates aren't overridden! 🤗**

# Contents
- **[Initial Setup](#Initial-Setup)**
    - **[Forking](#Forking)**
    - **[Cloning](#Cloning)**
    - **[Configuring Git to Sync to Fork](#Configuring-Git-to-Fork)**
- **[Updating Your Forked Repository](#Updating-Your-Forked-Repository)**
- **[Pushing Updates to GitHub](#Pushing-Updates-to-GitHub)**
    - **[Folder and Filing Conventions](#Folder-and-Filing-Conventions)**

## <a id="Initial-Setup"></a>Initial Setup
Before you set up your fork and remote, decide where you want this to be saved on your local computer.

Create this folder somewhere meaningful so that once you have setup the remote, you can push updates automatically using the [Updating Your Forked Repository](#Updating-Your-Forked-Repository) and [Pushing Updates to GitHub](#Pushing-Updates-to-GitHub) instructions.

**Note: When you clone a repository to your computer, GitHub will create a folder for the repo and copy the cloned files into this folder. Avoid renaming or moving this folder otherwise you will need to set up the remote again.**

### <a id="Forking"></a>Forking
While logged into your GitHub account, navigate to the **ca-study-group** repository and hit the *Fork* button in the top-right hand corner:

https://github.com/linda-lai/ca-study-group

![Fork](/assets/github-fork.png)

That's it! There's now a forked version saved to your GitHub.

### <a id="Cloning"></a>Cloning
While forked version is saved in your GitHub account online, you won't have the files in the repository on your computer.

To create a clone of your fork locally on your computer:

1. Navigate to the forked **ca-study-group** repository saved to your GitHub.

2. Under the repository name, click *Clone or download*.
   
3. In the **Clone with SSH** section, click the clipboard to copy the clone URL for the repository:

![Cloning](/assets/github-cloning.png)

4. Open Terminal.

5. Type `git clone`, and then paste the URL you copied:
   
    ```
    $ git clone git@github.com:YOUR_USERNAME/ca-study-group.git
    ```

6. Press Enter. A local clone will now be created on your computer.

### <a id="Configuring-Git-to-Fork"></a>Configuring Git to Sync to Fork
To setup the connection to allow GitHub to pull updates from the original  *upstream* repo (https://github.com/linda-lai/ca-study-group), to your forked version, i.e. *origin*:

1. Navigate to original **ca-study-group** repository on GitHub.

2. Under the repository name, click *Clone or download*.
   
3. In the **Clone with SSH** section, click the clipboard to copy the clone URL for the repository.

![Cloning](/assets/github-configuring-remote.png)

4. Open Terminal and change directories into the folder where you have cloned the local files to.

5. Type `git remote -v` and press Enter to see the current configured remote repository:

    ```
    origin  git@github.com:YOUR_USERNAME/ca-study-group.git (fetch)
    origin  git@github.com:YOUR_USERNAME/ca-study-group.git (push)
    ```

6. Type in `git remote add upstream` and paste in the URL copied from the original (not forked) repository and hit enter. It should look like:

    ```
    $ git remote add upstream git@github.com:linda-lai/ca-study-group.git
    ```

7. To confirm the new upstream repository has been correctly set up for your fork, type `git remote -v` again. It should show the URL for your fork as the origin and the original repository as the upstream.

    ```
    origin    git@github.com:YOUR_USERNAME/ca-study-group.git (fetch)
    origin    git@github.com:YOUR_USERNAME/ca-study-group.git (push)
    upstream  git@github.com:linda-lai/ca-study-group.git (fetch)
    upstream  git@github.com:linda-lai/ca-study-group.git (push)
    ```

## <a id="Updating-Your-Forked-Repository"></a>Updating Your Forked Repository
To download the latest files from the original repo:

1. Check your forked repository to confirm if there have been additional updates made. If there have been updates, GitHub will show the below message:
   *"This branch is [X] commits behind linda-lai:master."*

**Note: Make sure you are on your master branch before pulling from the upstream (original) repository.**

2. To check your current branch:
   ```
   $ git branch
   ```

3. Checkout so that you are on your master branch (if you aren't already):
    ```
    $ git checkout master
    ```

4.  While on your master branch, to download the latest files to your local computer, enter:
    ```
    $ git pull upstream master
    ```
This will download the latest version of the files to your computer.

4. To push the latest files from the original GitHub repo to your forked repo, enter:

    ```
    $ git push origin master
    ```

## <a id="Pushing-Updates-to-GitHub"></a>Pushing Your Updates to GitHub
Once you've updated your forked repo and downloaded the latest files to your local computer:

1. Create a new branch or checkout to an existing branch to work from.
   
   To create a new branch:
    ```
    $ git checkout -b [BRANCH-NAME]
    ```

    To go back to an existing branch to work off:
    ```
    $ git checkout [BRANCH-NAME]
    ```

2. Make your updates to the existing file and/or save the files you'd like to push to original repo into the relevant folder.

![Pushing Updates to GitHub](/assets/github-pushing-updates.png)

3. When you are ready to commit and push the updates, open up Terminal and check the changes and branch to be committed:
   
   To check your current branch:
   ```
   $ git branch
   ```

   To check which files have been changed:
   ```
   $ git status
   ```
    
4. Add the file(s) to be pushed through as an update:
   ```
   $ git add [FILENAME-1] [FILENAME-2]
   ```

5. Commit the changes:
   ```
   $ git commit -m "[COMMENTS RELATED TO UPDATE]"
   ```

6. Push the update to the main repo:
   ```
   $ git push origin [BRANCH-NAME]
   ```

7. Voila! The changes will be pushed to your forked repo.
   
8. To merge the changes to origin (the main repository), you will need to navigate to your fork in GitHub and raise a new pull request.
   
   As you have read/write access, you'll be able to merge these changes immediately (no need for the changes to be approved).

   Provided there are no conflicts you need to resolve, you'll be able to merge them right away by hitting the *Confirm merge* button.

![Pull Requests](/assets/github-pull-request.png)

To download the updated repo files to your local computer and push to your GitHub account, follow the steps outlined in the **[Updating Your Forked Repository](#Updating-Your-Forked-Repository)** section.

### <a id="Folder-and-Filing-Conventions"></a>Folder and Filing Conventions
To keep things manageable and findable (and to be nice to your fellow contributors), please label for file or leave comments with your name so we know who's contributed the file without having to dig through the logs.

For example:

```
js-fundamentals-q1-linda.js
```

That way, if you find a solution or notes that you'd like to rubberduck with the owner, you can easily find out who.

Any questions, shout out!