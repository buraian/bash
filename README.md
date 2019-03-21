# Bash Shared Config

![The Bourne-Again Shell](https://upload.wikimedia.org/wikipedia/commons/8/82/Gnu-bash-logo.svg)

## Initial Setup

- [Clone Config Repo](#clone-config-repo)
- [Install Bash-It](#install-bash-it)
- [Setup Local Config](#setup-local-config)
- [Create Sym Links](#create-sym-links)

### Clone Config Repo

```bash
$ git clone https://github.com/buraian/bash.git ~/.config/bash # default location
```

If cloning to an alternate location, then specify path in settings file:

```bash
$ cp ~/.config/bash/.settings.example.bash ~/.config/bash/.settings.bash
$ vim ~/.config/bash/.settings.bash # edit and save location setting
```

### Install Bash-It

```bash
$ git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
$ bash ~/.bash_it/install.sh
```

[Full Installation Instructions](https://github.com/Bash-it/bash-it#installation)

### Setup Local Config

```bash
$ mkdir ~/.config/bash/local/$HOSTNAME
$ mv ~/.bash_profile ~/.config/bash/local/$HOSTNAME/.bash_profile # MacOS
$ mv ~/.bashrc ~/.config/bash/local/$HOSTNAME/.bashrc # Linux
```

### Create Sym Links

_Create as needed._

```bash
$ ln -s ~/.config/bash/.bash_profile ~/.bash_profile # MacOS
$ ln -s ~/.config/bash/.bashrc ~/.bashrc # Linux
$ ln -s ~/.config/bash/.bash_logout ~/.bash_logout
$ ln -s ~/.config/bash/.inputrc ~/.inputrc
```
