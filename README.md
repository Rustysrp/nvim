# Neovim Config 3-30-22

### Debian

What will be installed for the basic setup (no compilers, just the shell)
* neovim
* vim-plug
* rename
* git
* curl



# Installs

neovim
```
sudo apt install neovim
```


git
> Need to clone repository
```
sudo apt install git
```


rename tool
> Will need to rename directory later (could also use 'mv', which doesn't need to be installed)
```
sudo apt install rename
```


curl
> will be used to install vim-plug
```
sudo apt install curl
```


vim-plug
> unix and linux
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Set-up

1. Create a .cache directory and then create a vim directory inside
> These could be called anything, but are the designated names for the backup files in the neovim directory, and would need to be changed accordingly
```
mkdir .cache
cd .cache
mkdir vim
```

2. In the main directory create a .config directory
```
cd ~
mkdir .config
cd .config
```

3. Clone the repository
`git clone https://github.com/Rustysrp/Neovim-Config`

4. Rename the directory of the repository to nvim
`rename -v 's/Neovim-Config/nvim/' *`

## Enabling plugins

1. Navigate to the /modules folder
`cd .config/nvim/modules`

2. Open plugins.vim with nvim
`nvim plugins.vim`

3. In command mode, use
`:PlugInstall`

4. Reload neovim after using `:wq` in command mode to save and quit the plugins.vim file

5. (Basic) Set-up is complete! 









