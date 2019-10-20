# 1. What is Git?

## Lesson Objectives
In this lesson we will cover:
- what is Git?
- why does this Git lesson barely scratch the surface of what Git can do?
- what is GitHub?
- what is a repository?
- local vs. remote repositories

## Terminology to be Covered
- **version control** -- Alternative terms include "revision control", "versioning". Version control refers to tracking and organizing changes to code, files, etc. over time. For researchers, good version control software can also help us to collaborate, publish, and share our work with others.
- **Git** -- A powerful tool for version control.
- **GitHub** -- An online, open-source-friendly platform for hosting work done with Git (and much more). GitHub is dependent on Git, but Git is not dependent on GitHub!
- **repository** -- what we call the thing that tracks changes to our files. You might think of it like a database, an invoice, or a receipt of every change you have ever saved.
- **repo** -- short for repository.
- **local repository** -- a repository that you have on your *local machine* (e.g., your laptop).
- **remote repository** -- a repository that lives elsewhere, typically online (i.e., it lives "remotely").

-------------------------------------------------------------------------------------------------------------
## What is Git?
Git is a tool for "version control" (alt. "revision control", "versioning"). It is not the only tool for version control; Mercurial is another modern example.

## What is "version control"?
We've all had this happen before. Researchers do this file naming thing. All. The. Time.

<img src="/images/phd101212s.gif" width="450">

[Comic by Jorge Cham](http://phdcomics.com/comics/archive.php?comicid=1531)

We do it so we can track the changes we make, collaborate with other researchers, and revisit old versions of our files. But there's a better way!

>Hint: we suggest using Git!

So let's set down some functional requirements for version control needed by researchers.

## Functional requirements of version control for researchers

1. Make it possible to *track changes* to documents, code, data, etc. *over time*
2. Make it possible to *organize those changes* in meaningful ways
3. Make it possible to *publish*, *collaborate*, and *share* your work

### 1. Make it possible to track changes
- Keep track of past versions of files
- Keep track of which changes were made to which versions of files
- Keep track of who made which changes and when

### 2. Make it possible to organize changes
- Group related changes, even if they don't happen at exactly the same time
- Associate changes with tags or messages that make sense to you and others

### 3. Make it possible to publish, collaborate, and share
- Publish code and/or data alongside your papers
- Collaborate with others using your own computer, set up how you like it
- Share your work with the *entire* world so others can use it, build on it, repeat it, etc.

### "Make it possible" means the tool must be *simple*

Below is a hammer that you can use to drive a nail (the task of interest) at nearly any skill level:

<img src="/images/claw_hammer.jpg" width="450">

That is what we are shooting for in this lesson.

Below is what git gives you out of the box:

<img src="/images/swiss_army_hammer.jpg" width="450">

Obviously, *this tool is too complicated*. Each individual component is probably very useful, but it's so confusing as to be useless until you know how to use each and every one of those attachments. We are *not* going to use this hammer here. Because it's confusing. And confusing is worthless for beginners needing to get something done.

Instead, this lesson will focus on a narrow subset of what Git can do to make it more approachable (the "Goat Path Git"). Our view is that, as researchers, you are probably pretty good at, well, *researching* how to fix a problem. If we can get you started using some basic aspects of Git, you will be prepared to learn what you need to make the most of it later!

-------------------------------------------------------------------------------------------------------------
## The Goat Path
According to the OED, a goat path is: A (narrow) path or track, especially on a hillside or mountain, such as is made by goats.

Here we take a narrow path in describing Git that is useful for researchers who want help with version control for their day-to-day professional lives.

### Why a goat path?
Well a goat path can be the shortest (and possibly the safest) path to follow in a remote place you're not familiar with. And let's face it, Git is unfamiliar territory! The beauty of a goat path is that those who know their way around (the goats) have traveled the same way so many times before that it's actually cut a visible and easy-to-follow trail. You know this trail is safe because, if it weren't, the goats would not have gone that way in the first place.

In case you've never seen a goat path before, this is one:

<img src="/images/goat_path.jpg" width="450">

If you don't follow the goat path as a beginner, bad things happen sometimes. This is so common with Git that the popular comic XKCD has even commented on it.

<img src="/images/git_xkcd.png" width="450">

[Comic by XKCD](https://xkcd.com/1597/)

***Please note:***

>There has been no mention of coding above. That's on purpose; git can be used to perform version control on regular text (manuscripts, dissertations, theses, etc), data (though there are many, many other [probably better] ways to do this), as well as code! Versioning is great. And versioning is really the whole point here. Git just happens to be the tool we use (but there are many other options, go explore!).

-------------------------------------------------------------------------------------------------------------
## So...what is Git?
Git is powerful software to help you with version control and collaboration. That is, Git helps you to track and organize changes to your files over time, revisit prior versions of files, and collaborate with others. Git is built for the command line (although it can be managed through various GUIs - [click here for more](https://git-scm.com/downloads/guis)).

## Ok, so what is GitHub then?
GitHub (and other such platforms) is an online place to facilitate that version control, collaboration, and publication of your work in accordance with the ideals of "open science". They host and manage the servers so you don't have to.

Let me be clear: Git is *not the same thing* as GitHub! Git is a tool you can use from the command line. It is something you can use on your local machine without ever interacting with GitHub or any other service like it. GitHub, however, is a service/resource that makes using certain aspects of Git easier.

### Why GitHub, and not some other service?
Software Carpentries likes GitHub for a few reasons, but perhaps the best reason is that it is very popular! And when collaboration is one of the goals, popular is a good thing :sunglasses:

Plus, as a student, you can have unlimited private repositories with GitHub for the duration of your studentship :nerd_face:

-------------------------------------------------------------------------------------------------------------
## Repositories
Git uses some special terminology that can be confusing for first-timers. First up is the term **repository**. "Repository" is the term used to refer to a directory (folder) that holds content that Git can keep track of.

*Conceptually*, a repository is like a database or a digital warehouse. Are you working on a set of files that you want to keep track of using Git? You'll have to put them in a Git repository!

*Technically*, a Git repository is any directory that contains a special `.git/` directory inside of it. That `.git/` directory is what handles the operations of Git. It is those Git operations that make the directory function as a repository (by tracking changes) instead of a normal directory (which tracks nothing).

Repositories are often referred to by a shorthand term, **repo**. There is no difference between these terms (other than 6 letters).

### Local vs. Remote Repositories
There are two "kinds" of repository, **local** repositories and **remote** repositories. The technical difference is nuanced, so I'm instead going to tell you how we will use the terms:

- **Local repository** -- any repository on somebody's *local machine* (e.g., personal laptop, laboratory workstation).
- **Remote repository** -- any repository on *GitHub* or a similar online platform.

You can use Git on either a local or a remote repository - it is not necessary to have both. Usually, however, you use both *(i)* one or more local repositories and *(ii)* a remote repository, with the local and remote repositories *linked together*. We will talk more about this later, when we turn to remote repositories. For now, we will learn the basics of git using *local repositories only*.

-------------------------------------------------------------------------------------------------------------
# Guides and resources

[JessiTron: Git Happens (an in-depth look at how Git works)](https://www.youtube.com/watch?v=Dv8I_kfrFWw)

[So WTF is Git?](https://codeburst.io/so-wtf-is-git-fa7daa0e0271)

[GUIs for Git](https://git-scm.com/downloads/guis)


-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
# 2. "Gitting" things done with Git

## Lesson Objectives
In this lesson, we will:
- create a local Git repository
- introduce ourselves to Git
- learn how to organize and track our changes with Git

## Terminology Covered
- **to commit (v.)** -- to save the state of all of your files in the repository.
  - _I committed the changes to the repository._
- **commit (n.)** -- an individual instance of a committing event. A snapshot of the repository in time.
  - _The last commit introduced a bug in the program._
- **changeset** -- a set of changes which should be treated as an indivisible group.
- **to stage (v.)** -- to bundle files together *in preparation* of a commit (i.e., saving the state to the repo).
- **staging area (n.)** -- the digital "space" where staging takes place. Changes must first be added to the staging area before you can commit them.

## Commands Covered
- `git init` -- Start a Git repository
- `git config --global <configuration option> "configuration value"` -- Change your global Git configuration file to add or set a configuration option value. Git uses this file to determine who you are, communicate with GitHub (or other Git resources), and remember your settings for using Git.
- `git status` -- Check the status of this repository (has anything changed?)
- `git diff` -- See the differences noted by `git status`
- `git add` -- Stage files whose changes you want to track
- `git commit --message "YOUR COMMIT MESSAGE"` -- Commit the changes to the Git repository with a descriptive message
- `git log` -- See a log of committed changes to the repository

-------------------------------------------------------------------------------------------------------------
## Initializing a local Git Repository
Congratulations, you are about to start actually using Git!

A local Git repository is just a directory that you tell Git to keep track of.
So let's make a fresh directory to get started:

```bash
cd ~/Desktop/2019_workshop/
mkdir temp
```

And let's convert that directory into a Git repository with `git init`:

```bash
cd temp
git init
```

And voilà! We have a Git repository!

### How do I know it worked?
Remember, Git repositories are just directories that contain a special `.git` directory inside them.
To see that this is the case, let's list **ALL** the contents of the `temp` directory.

```bash
ls -a
```

You should see this:

```text
. ..  .git
```

Good. You have just created a local repository!

### What if I initialize a Git repository by mistake?
Imagine we just initialized a Git repository, and then realized that we weren't in the right directory. Yikes! What can we do?

Remember: a local Git repository is just a directory with a `.git` subdirectory. So all we need to do is remove that directory!

```bash
rm -r .git
```

Boom. Problem solved :wink:

You can remove the `temp` directory now if you like (it was only ever meant to be temporary):

```bash
cd ..
rm -r temp
```

### Do I have to start from a new directory?
Suppose you have a project you've been working on and you want to start tracking it with Git.

Of course you *could* make a new directory, initialize it as a Git repository with `git init`, and then move all your files from their current location into the newly minted Git repository. But who wants to do all that?

In actuality, you can convert any directory into a Git repository. All you need to do is:
1. Move into the directory
2. `git init`

This works on directories that already exist. Let's practice that!

First, make sure you're at the top of the `2019_workshop` directory:

```bash
cd ~/Desktop/2019_workshop
```

Convert this to a Git repository so we can track our work!

```bash
git init
```

Nice! :thumbsup: We will continue to use this directory as a Git repository so that you can track the work we do in the workshop (from here on, at least) with Git!

-------------------------------------------------------------------------------------------------------------
## Introduce yourself to Git!
Git works by creating special identifiers for changes that you make to files. These identifiers are generated in part based on the author of the changes (among many other things).

Consequently, Git needs to know who you are! Let's introduce ourselves to Git:

```bash
git config --global user.name "YOUR NAME HERE"
git config --global user.email "YOUR GITHUB EMAIL HERE"
```

By telling Git your name, you allow Git to tag your activity as being authored by you. By telling Git the email associated with your GitHub account, you allow for communication between the Git installed on your computer, and the Git used on GitHub. More about this later!

This introduction was a one-time thing. Now you are ready to use Git!

-------------------------------------------------------------------------------------------------------------
## Before we begin...
Before we properly begin learning to work with Git, do the following:

```bash
git add --all
git commit --message "initialize SWC directory as a repository"
```

I just had you use Git to record the act of initializing the `2019_workshop` directory as a repo. You created a **commit** (i.e., a snapshot, or checkpoint, in time) that contained `--all` the content of the directory, and which you labeled with the message `initialize SWC directory as a repository`.

We will return to what I had you do in more detail later. For now, let's learn about working with Git!

-------------------------------------------------------------------------------------------------------------
## A (local) Git-based Work Cycle
Ok, so we have a Git repository. Now...how do we use it?

We'll go through this step-by-step shortly, but let's preview a good work cycle to use with Git:
1. Do some work. It's a good idea to work on small, easily describable chunks.
2. `git status`: ask Git to give you a status report to assess the changes you made.
3. `git diff`: ask Git for a more detailed report of the changes you made.
4. `git add <file>`: add those changes that you want to keep into the *staging area*.
5. `git status` (again): it's a really good idea to verify that Git thinks you added the same changes that you think you added.
6. `git commit --message "YOUR MESSAGE"` (`git commit -m "YOUR MESSAGE"` for short): commit the changes to the repository. This will create a commit that contains your message, which will be logged in the history of your repository forever :grin:
7. Rinse and repeat as desired.

We will expand on this recommended work cycle a little bit in the next lesson. But for now, let's put this work cycle into practice!

-------------------------------------------------------------------------------------------------------------
## Working with Git
Making sure we are in our repository...

```bash
cd ~/Desktop/2019_workshop
```

...let's start by adding a file to our repo:

```bash
touch readme.txt
ls
```

Ok, that worked like normal. We have a new file in the directory. What does Git think happened?

```bash
git status
```

Let's break down what Git is telling us, bit-by-bit:

```text
On branch master
```

Ok...what is a "branch", and why is it called "master"?

In many cases, Git uses a tree analogy for terminology. You don't need to worry about this for now. Just know that "branching" is a powerful feature of Git. But remember, Git has a lot of complicated tools and features (recall the "Swiss Army hammer"); in this lesson, we will be keeping things simple!

```text
Untracked files:
  (use "git add <file>..." to include in what will be committed)
  readme.txt

nothing added to commit but untracked files present (use "git add" to track)
```

Ok, now this is the meat of the `git status` report. Git's job is to track files, right? Here it's telling us that there are files in the repository that it is *not tracking*. It even tells us how to start tracking those files or include them in a commit.

So why is our new file "untracked" even though Git's job is to track files, and Git sees that the file is there?

This is where **staging** comes in. In order to allow you to organize the changes you make in sensible chunks, Git adds an intermediate step between making a change and committing it. This allows you to, e.g., make many changes to different files, and then *commit only some of those changes to the repository*. The **staging area** is the place where those changes "go" in preparation for a commit.

<img src="/images/local_git.png" width="450">

[Image adapted from post by Zvonimir Spajic at HackerNoon (Medium)](https://medium.com/hackernoon/understanding-git-index-4821a0765cf)

Since we want to commit our new readme file to our repository, let's take Git's advice and *add readme.txt to the staging area*:

```bash
git add readme.txt
```

Let's see how this changed our `git status` report for the repository.

```bash
git status
```

Notice this part of the output:

```text
Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
  new file:   readme.txt
```

Now that we have *added readme.txt to the staging area*, Git tells us we have `changes to be committed` that includes a `new file: readme.txt`.

>Git is full of "helpful" advice (the advice gets more helpful as you get more used to Git's terminology). Here, Git tells us how to remove this change from the staging area if we don't want to commit it.

Ok, that's nice. But this file is empty. Let's try adding something to the file. To write into the file, open it with nano:

```bash
nano readme.txt
```

Write a line into the file (you can write whatever you want). When you are done, save it and exit nano.

Let's check in with Git again. What does it think we did?

```bash
git status
```

```text
On branch master

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
  new file:   readme.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
  modified:   readme.txt
```

Notice what happened here. We had already added `readme.txt` to the staging area, which Git reports as `Changes to be committed` and refers to the `new file: readme.txt`. This part is exactly the same as it was before.

But Git also sees that we have made further changes that we have not added to the staging area. Git reports these as `Changes not staged for commit` and notes one such change (the only change we made): `modified: readme.txt`. So Git can tell the difference between new files, and modified files. Neat!

>So what do you think would happen if we committed our changes right now? What would `readme.txt` contain?

Now imagine that you had changed a lot inside of `readme.txt`. Perhaps you can't even remember what changes you made. Git can give you a more detailed picture:

```bash
git diff
```

You should get an output like the following, where the last line is whatever you added to `readme.txt`:

```text
diff --git a/readme.txt b/readme.txt
index e69de29..270c611 100644
--- a/readme.txt
+++ b/readme.txt
@@ -0,0 +1 @@
+hello, world!
```

>`git diff` is short for "show me the *difference* between my working copy and the staging area." Git uses `+` and `-` to indicate lines that are added or subtracted, respectively. Modifications are usually represented as subtracting the old line and adding the new line, so you see the old line preceded by `-` and then the new line preceded by `+`.

We like the line that we added to `readme.txt`, so let's add this change to the staging area:

```bash
git add readme.txt
```

Let's double-check that we are on the same page with Git:

```bash
git status
```

Notice that now we are back to just:

```text
On branch master

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
  new file:   readme.txt
```

>If we had wanted to keep the addition of the new file separate from the addition of the line of text in the file, we would have had to commit after we created the file, but before we added the line of text to the staging area.

We are pretty happy with this, so I think we are ready to commit our changes to the repo:

```bash
git commit --message "add readme"
```

>The message we attach to this commit could be anything we want. But it's a good idea to make your commit messages *precise*, *concise*, and *informative*. This comes with practice!

Let's see if the status of our repo is different now:

```bash
git status
```

We should see the following:

```text
On branch master
nothing to commit, working tree clean
```

Again, another tree analogy. Basically, Git is saying "your working copy of the repository matches the official current state of the repository".

Congratulations, you've worked through your first Git-based work cycle!

-------------------------------------------------------------------------------------------------------------
## Reviewing your commit history
Before we end, let's do one final thing. Imagine you did this work, then you went on a long vacation. You just got back, and you want to pick up where you left off. Only problem is, you can't remember what you had been working on!

Git can help you here. You can see a log of your recent commits to help you remember what you were doing:

```bash
git log
```

Notice that your output contains something like the following:

```text
commit d7d235517149fa309a792c132802b6e78a5469c8 (HEAD -> master)
Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
Date:   Fri Oct 18 16:00:57 2019 -0700

    add readme

commit be438683506f5d26d31e20e46d8c9caa6f4ecd2d
Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
Date:   Fri Oct 18 15:58:51 2019 -0700

    initialize SWC directory as a repository

```

Hey, now we can see why we introduced ourselves to Git! It has our *user.name* and *user.email* in the `Author:` field! In fact, *Git will not allow you to make a commit without providing a user name and email.*

The commit itself has an arbitrary character sequence (called a hash) as a label. This lets Git find the commit easily, but you don't need to worry about that right now. Instead, notice that your commit message is there, floating in space, easy to find and to read. ***This is why it is so valuable to write good commit messages - they are messages to your future self!***

-------------------------------------------------------------------------------------------------------------
## Exercise: DIY Git!
Using the same repo we were just working on, I want you to:
1. Add some more text into `readme.txt`
2. Add a new file to the repo called `practice.txt`
3. Make a separate commit for each of these two changes
4. How does the commit log look different now?

<details>
  <summary>Solution</summary>

  #### Add some more text into `readme.txt`
  <p>

  ```bash
  nano readme.txt
  ```

  </p>

  ...add text to the file, write out and exit nano (control+o, enter, control+x)

  #### Add a new file the repo called `practice.txt`
  <p>

  ```bash
  touch practice.txt
  ```

  </p>

  #### Make a separate commit for each of these two changes
  <p>

  ```bash
  git add readme.txt
  git status
  git commit --message "DIY exercise #1"
  ```

  </p>

  ...making the commit message whatever you want. Then:

  <p>

  ```bash
  git add practice.txt
  git status
  git commit --message "DIY exercise #2"
  ```

  </p>

  ...making the commit message whatever you want.

  #### How does the commit log look different?
  <p>

  ```bash
  git log
  ```

  </p>

  ...should give you an output like this:

  <p>

  ```text
  commit 0da02f5d54be96244daa90483a21dbdda4d6258b (HEAD -> master)
  Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
  Date:   Fri Oct 18 16:00:57 2019 -0700

      DIY exercise #2

  commit 8fbe2c4bd8d93b0dd2e2efad19a0fd1d6071d53f
  Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
  Date:   Fri Oct 18 15:56:22 2019 -0700

      DIY exercise #1

  commit d7d235517149fa309a792c132802b6e78a5469c8
  Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
  Date:   Fri Oct 18 16:00:57 2019 -0700

      add readme

  commit be438683506f5d26d31e20e46d8c9caa6f4ecd2d
  Author: Noah Richard Nelson <noah.nelson.11@gmail.com>
  Date:   Fri Oct 18 15:58:51 2019 -0700

      initialize SWC directory as a repository

  ```

  </p>
</details>

## Congratulations, you now know how to use Git in a local repository!

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
# 3. "Gitting" Things Done with GitHub

## Lesson Objectives
In this lesson we will cover:
- why use remote repositories?
- creating a remote repository
- linking a remote repo to an existing local repo
- expanding the Git work cycle to incorporate a remote repo

## Terminology to be Covered
- **origin** -- The reference point to use when linking a local and a remote repository. Almost always the remote repository. When syncing the two repositories, one will always be considered as ahead or behind the origin.

## Commands to be Covered
- `git remote add origin [URL]` -- Associate your local repository with the remote repository found at the [URL]
- `git push --set-upstream origin master` (`git push -u origin master` for short) -- If your local repository exists before your remote repository, use this to "push" the local repository into the remote repository for the first time (see `git push` below)
- `git pull` -- "Pull" the state of the remote repository into your local repository
- `git push` -- "Push" the state of your local repository into the remote repository

-------------------------------------------------------------------------------------------------------------
## Why use remote repositories?
As we discussed previously, you can "Git things done" using only a local repository. So why use a remote repository at all?

There are 2 main reasons to use a remote repository:
1. Collaboration
  - work on the same files as your collaborators, using Git to keep track of everyone's contributions
  - let others know exactly what you've been contributing
2. Confidence
  - the remote repo can serve as a backup on the cloud
  - GitHub (for example) is popular enough that they have to take very good care of their servers

In addition, online platforms like GitHub provide some nice GUIs for interacting with your repo and viewing your commit history. These platforms also have a lot of helpful resources and tutorials for using Git both through their platform and from the command line.

## Creating a remote repository
We are going to create a remote repository on GitHub now. This is essentially like doing a `git init` for the remote repository.

We are ultimately going to link this remote repo to the local repo that we were just using on our computers. As such, we are going to create this remote repo as follows:
1. Go to GitHub and sign in to your account (if you aren't already signed in)
2. Look for the `+` drop-down menu at the top right of the screen
3. Click on `New repository`
4. Name the repository `2019_workshop`
5. Add a description. This repo will serve as a record of some of what you did in this workshop after you leave, so you may want the description to explain this fact
6. DO NOT CHECK `Initialize this repository with a README`
7. Click the drop-down menu labeled `Add a license` and select `MIT License`
8. Click `Create repository`

>If we did not already a local repo, we may have wanted to check `Initialize this repository with a README`. This would create a file called `README.md` which would serve as the landing page for others who visit our repository.

And voilà! We have just created a remote repository on GitHub!

## Linking the remote repo to our local repo
You should now be looking at a GitHub page titled `Quick setup — if you’ve done this kind of thing before`.

>You haven't done this kind of thing before, but that's okay. I'm here to help you!

Copy the link to this remote repo that GitHub provides right beneath the title, keeping `HTTPS` selected.

Return to your command line, and ***make sure you at the top of your local 2019_workshop repo***.

Add a `remote origin` to your local repository by doing the following:

```bash
git remote add origin [put copied web address here]
```

>If you are having trouble copy-and-pasting the web address into the command line, you can type it manually. Just be *very careful* that you copy it *exactly!*

Verify that you added the web address correctly (especially important if you had to type it by hand!):

```bash
git remote -v
```

You should get an output like this:

```text
origin	https://github.com/YOUR_USER_NAME_HERE/2019_workshop.git (fetch)
origin	https://github.com/YOUR_USER_NAME_HERE/2019_workshop.git (push)
```

If not, try `git remote add origin [URL]` again, making sure you type it exactly (and without the `[]` brackets).

You have just told Git that your local Git repository (`2019_workshop`) has a remote repository to work from. This remote repo is referred to as the **origin**. This is because the remote repo will serve as the master reference point that Git uses to sync your local and remote repositories. From now on, Git will report the status of your local repo as being ahead/behind your remote repo.

You ***local repository*** now knows about your remote one. But your ***remote repository*** does not yet know about your local one! To finalize the link between them, you must **push** your local repository up to your remote repository:

```bash
git push --set-upstream origin master
```

This "pushes" your local repo up to GitHub, and tells Git that the remote repo is the "upstream" origin that it should use to keep track of your changes.

Return to GitHub, and refresh the page for your remote repository. It should now contain the contents of your local repository.

Congratulations! You've created a remote repository and linked it to an existing local repository!

-------------------------------------------------------------------------------------------------------------
## Using Git on GitHub
So far, we have learned how to use Git to track changes to a repository from the command line. GitHub also allows you to work directly on the remote repository.

Let's try making a few changes to our remote repository. On GitHub, click on the file `readme.txt`.

You should see something like the following. Click on the pencil icon to edit the file.

<img src="/images/GitHub_edit_file.png">

Make some changes to the file.

Notice that GitHub doesn't give you a way to perform a traditional `save` operation. Instead, GitHub has an interface for **committing** your changes to the remote Git repository at the bottom of the screen.

The first box in the interface is were your **commit message** goes. This is the `...` part when you work from the command line and do `git commit --message "..."`.

Add a *precise, concise, and informative* commit message about the changes you just made.

Making sure that `commit directly to the master branch` is still selected, click on `Commit changes`.

GitHub just performed the following for you on the remote repository:

```bash
git add readme.txt
git commit --message "YOUR COMMIT MESSAGE"
```

## Keeping your local and remote repositories synced
Great, we just made a nice change to our repository on GitHub! We're all good, right?

Well, actually not really. Our *remote repository* was updated, but our *local repository* is not aware of the changes we made!

Keeping your local and remote repositories synced up is important. It makes sure that you have a single, linear history of commits that both repositories are tracking. If you do work without syncing your repositories, you will ultimately create parallel histories that can be very confusing to straighten out!

To keep the repositories synced, we need two key commands: `git pull` and `git push`.

### Pulling commits from the remote repo into your local repo
Right now, there is a commit in our remote repo that does not exist in our local repo. Let's fix that by **pulling** the current state of the remote repo into our local repo.

Go back to the command line, and make sure you are in your local repository:

```bash
cd ~/Desktop/2019_workshop
```

**Pull** from your remote repo:

```bash
git pull
```

>You will likely be asked to input your GitHub password. Do so.

Notice that Git now provides some information about what it pulled. Can you see how this is a reflection of the changes you made on GitHub? It's pretty cool :sunglasses:

Now you know that your local repo is up-to-date with your remote repo!

### Pushing commits from the local repo into your remote repo
Now that our local repo is up-to-date, let's get to work!

`practice.txt` is still empty from before. Let's add some content to that file in nano:

```bash
nano practice.txt
```

Now let's verify that we are on the same page as Git:

```bash
git status
```

Git's reporting that we modified a file. Good! Now let's add those changes to the staging area:

```bash
git add practice.txt
```

Let's double-check that it worked as expected:

```bash
git status
```

Good, Git is reporting the modified file under `Changes to be committed`. Let's commit those changes:

```bash
git commit --message "COMMIT MESSAGE"
```

Very nice, we did some very important work and committed the changes to our local repository. :wink:

But wait a minute! Our remote repository needs to be made aware of those changes! We can handle that with `git push`:

```bash
git push
```

>You may be asked to input your GitHub password. Do so.

That's it! Let's make sure GitHub is reflecting that last commit in our remote repository. Go back to GitHub, refresh the repo page, and take a look!

-------------------------------------------------------------------------------------------------------------
## An Updated Git-based Work Cycle
Now that we have set up a remote repository, let's revisit our Git-based work cycle.

Here's what I do every time I sit down to work on a project that I'm tracking with Git:
1. `git pull` -- Pull changes from the remote repository. I do this even if I haven't changed anything just to be safe and make it a habit.
2. `git log` -- Remind myself of my recent activity in the repository. What are my recent commits?
3. Do some work.
4. `git status` -- Remind myself of the work I just did.
5. What changes that I made do I want to commit?
6. `git diff <file>` -- Remind myself of the work I did on a particular file that I want to commit my changes for.
7. `git add <file>` -- Once I'm sure I want to commit those changes, stage them for the commit. (Repeat steps 6-7 for each file I want to include in this one commit)
8. `git commit --message "..."` -- Commit the set of changes together with a clear message. (Repeat steps 3-8 as needed)
9. `git push` -- When I'm done, I push the changes to my remote repository.

This gives us an updated picture of what we are doing with Git:

<img src="/images/git_flow.png">

[Image from blog post by Vassilis Kehayas](https://neurathsboat.blog/post/git-intro/)
