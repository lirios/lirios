qmlOS
=====

[![ZenHub.io](https://img.shields.io/badge/supercharged%20by-zenhub.io-blue.svg)](https://zenhub.io)

[![GitHub issues](https://img.shields.io/github/issues/qmlos/qmlos.svg)](https://github.com/qmlos/qmlos/issues)
[![Maintained](https://img.shields.io/maintenance/yes/2016.svg)](https://github.com/qmlos/qmlos/commits/master)

This repository contains:

* Manifest files for developers.
* General issue tracker.
* Wiki.

## Manifest

Manifest files describe the project structure and is used by git-repo
to fetch all the packages repositories.

### How to use it

To prepare for cloning, perform the following procedure:

1. Create ~/bin/ subdirectory, include it in PATH, and then switch to it by executing the following commands:

```sh
mkdir ~/bin/
PATH=~/bin:$PATH
```

2. Download the repo script by executing the following command:

```sh
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
```

3. Change the attribute of repo to make it executable by executing the command:

```sh
chmod a+x ~/bin/repo
```

4. Create a new directory for Hawaii and then switch to it by executing the following commands:

```sh
mkdir ~/qmlos
cd ~/qmlos
```

### Clone latest sources

To clone the latest source of all projects over SSH, perform the following procedure:

1. Initialize the repository by executing one of the following commands, as appropriate.

For developer access:

```sh
repo init -u ssh://git@github.com/qmlos/qmlos.git -b develop
```

For read-only access:

```sh
repo init -u https://github.com/qmlos/qmlos.git -b develop
```

2. Synchronize the repository by executing the following command:

```sh
repo sync
```

### Get ready for development

repo doesn't create local branches for you, hence you end up with a
detached head that points to the last known good commit.

Before you start developing make sure you have local branches:

```sh
repo forall -c 'git checkout $REPO_RREV'
```

Now set git to use the commit template that will help you write
good commit messages:

```sh
ROOTDIR=$(pwd) repo forall -c 'git config commit.template $ROOTDIR/.commit-template'
```

## General issue tracker

Click on the [Issues](https://github.com/qmlos/qmlos/issues) tab
and submit issues.

## Wiki

Click on the [Wiki](https://github.com/qmlos/qmlos/wiki) tab, read and/or write new content.

Alternatively you can clone the Wiki repository, work on your local system and push the changes back.

Clone the repository with:

```sh
git clone git@github.com:qmlos/qmlos.wiki.git
```
