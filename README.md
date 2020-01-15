# Git managed dotfiles

## What's dotfiles

> User-specific application configuration is traditionally stored in so called [dotfiles](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory#Unix_and_Unix-like_environments) (files whose filename starts with a dot).

## Usage

These instructions will get you a copy of my dotfiles and running on your local machine.

* Now clone the dotfiles into a bare repository in a folder of your local machine:

`git clone --bare https://github.com/gentcys/dotfiles.git <destination folder>`

* Define the alias in the current shell scope:

`alias dotfiles='/usr/local/bin/git --git-dir=<destination folder> --work-tree=$HOME'`

* Checkout the acutal content from the bare repository to your $HOME:

`dotfiles checkout`

* The step above might fail with a message like:

```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a back folder:

```
mkdir -p dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} dotfiles-backup/{}
```

* Re-run the checkout if you had problems:

`dotfiles checkout`

* Set the flag *showUntrackedFiles* to no on this specific repository:

`dotfiles config --local status.showUntrackedFiles no`

* You are done, from now on you can now type *dotfiles* command to add and update your dotfiles.
