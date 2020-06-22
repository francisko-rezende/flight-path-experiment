# Introduction

I will use this page to document how I am using Metacentrum's cloud to process the butterfly tracking videos.

# Logging in

I use `ssh` to log in to the different Metacentrum machines as follows:

- `ssh frdemora@remote-machine`

I am currently using  [Metacentrum's frontend machines](https://wiki.metacentrum.cz/wiki/Frontend).
These are machines that may be used without any prior arrangements (e.g., on demand).
Specifically, I am/will using/use:

+ `zuphux.cerit-sc.cz` for storage, has unlimited storage space. Uses CentOS 7.3;
+ `alfrid.meta.zcu.cz` will try to use this for processing the videos because it uses Debian.

# Moving files

I am using `scp` move files between the remote machines and my own computer.

## Upload

I do uploads as follows:

Obs: the examples assume the file/folder being moved are in the current working directory

+ `scp example.txt frdemora@remote-machine:` for files;
+ `scp -r example-folder frdemora@remote-machine:` for folders.

## Download

Obs: the examples assume the file/folder being moved are in the current working directory

+ `frdemora@remote-machine:~/example-folder/example.txt .` for files;
+ `scp -r frdemora@remote-machine:~/example-folder .` for folders.

# Actions I took

+ 2020-06-19 I reformatted the HDD we bought so it is in exFAT. I followed this [tutorial](https://support-en.wd.com/app/answers/detail/a_id/20821). After reformatting I backed up the data I had in my computer using the drive.