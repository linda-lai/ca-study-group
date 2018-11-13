# Coder Academy Cohort Resources
Welcome to the repository for shared notes, challenge solutions, resources and other bits and bobs from Coder Academy's Melbourne bootcamp cohort.

Coding is hard, pushing to GitHub even scarier. The repo is a space to practice and share your stuff with fellow students.

![Study-Group](/assets/study-group.jpg)

Any and all contributions are welcome - consider this our very first open source project!

## Contributors
Please DM me if you'd like to be added to the repo as a contributor.

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

## <a id="Initial-Setup"></a>Initial Setup
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
    $ git clone https://github.com/YOUR-USERNAME/ca-study-group
    ```

6. Press Enter. A local clone will now be created on your computer.

### <a id="Configuring-Git-to-Fork"></a>Configuring Git to Sync to Fork
To setup the connection to allow GitHub to pull updates from the original  *upstream* repo (https://github.com/linda-lai/ca-study-group), to your forked version, i.e. *origin*:

1. Navigate to original **ca-study-group** repository on GitHub.

2. Under the repository name, click *Clone or download*.
   
3. In the **Clone with SSH** section, click the clipboard to copy the clone URL for the repository.

![Cloning](/assets/github-configuring-remote.png)

4. Open Terminal and change directories into to the folder where you have cloned the local files to.

5. Type `git remote -v` and press Enter to see the current configured remote repository:

    ```
    origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
    origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
    ```

6. Type in `git remote add upstream` and paste in the URL copied from the original (not forked) repository and hit enter. It should look like:

    ```
    $ git remote add upstream https://github.com/linda-lai/ca-study-group.git
    ```

7. To confirm the new upstream repository has been correctly set up for your fork, type `git remote -v` again. It should show the URL for your fork as the origin and the original repository as the upstream.

    ```
    origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
    origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
    upstream  https://github.com/linda-lai/ca-study-group.git (fetch)
    upstream  https://github.com/linda-lai/ca-study-group.git (push)
    ```

## <a id="Updating-Your-Forked-Repository"></a>Updating Your Forked Repository
To download the latest files from the original repo:

1. Check your forked repository to confirm if there have been additional updates made. If there have been updates, GitHub will show the below message:
   *"This branch is [X] commits behind linda-lai:master."*

2. To download the latest files to your local computer, enter:
    ```
    $ git pull upstream master
    ```
This will download the latest version of the files to your computer.

3. To push the latest files from the original GitHub repo to your forked repo, enter:

    ```
    $ git push origin master
    ```

## <a id="Pushing--Updates-to-GitHub"></a>Pushing Your Updates to GitHub
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

4. Commit the changes:
   ```
   git commit -m "[COMMENTS RELATED TO UPDATE]"
   ```

5. Push the update to the main repo:
   ```
   $ git push origin [BRANCH-NAME]
   ```

6. Voila! The changes will be pushed to the main repo.

To download the updated repo files to your local computer and push to your GitHub account, follow the steps outlined in the **[Updating Your Forked Repository](#Updating-Your-Forked-Repository)** section.

Any questions, shout out!