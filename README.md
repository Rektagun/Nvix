<div align="center">
	<a href="https://github.com/Rektagun/Nvix">
		<img src="https://github.com/Rektagun/Nvix/assets/99794571/26e3e312-8d82-4c9d-bc71-856abf20bb9d" width="350px"/>
</a>
  </div>



<div align="center">
	<a href="https://github.com/Rektagun/Nvix">HOME</a>
  <span> • </span>
    	<a href="https://github.com/Rektagun/Nvix/wiki">WIKI</a>
  <p></p>
</div> 


	This is still something of my own config


## What is Nvix?

<b>Nvix</b> is a collection of the .config/nvim files that are used to customize neovim that I have configured and used by me.



## Directory structure

NOTE: Windows and Linux/Unix/WSL have different paths for nvim configurations:<br>

Linux/Unix/WSL: `` ~/.config/nvim/init.vim or ~/.vimrc (for compatibility with Vim) ``
<br>

Windows: `` C:\Users\username\AppData\Local\nvim\init.vim ``

And I am focusing on Linux/Unix/WSL


 git commit amend -m "Amended the version of nvim (0.9.5); harpoon.lua to the directory structure"





## Installation - Must read
### Prerequisites:
- ### Neovim (nvim) version 9.5 and above. <br>
See <a href="https://github.com/neovim/neovim"> nvim repo</a> to see the installation details, or I have provided them below as well so you can build it by yourself.<br>

#### Build from source:

##### Install dependencies:
```
sudo apt-get install ninja-build gettext cmake unzip curl
```
##### Clone Neovim repo:
```
git clone https://github.com/neovim/neovim.git
```
```
cd neovim
```
##### Checkout stable version (0.9.5):
```
git checkout v0.9.5
```
##### Build and install:
```
make CMAKE_BUILD_TYPE=Release
```
```
sudo make install
```


- ### Nvix uses <a href="https://github.com/junegunn/vim-plug?tab=readme-ov-filehttps://github.com/junegunn/vim-plug?tab=readme-ov-file"> vim-plug</a> as the plugin manager. <br>

Reffer to <a href="https://github.com/junegunn/vim-plug?tab=readme-ov-filehttps://github.com/junegunn/vim-plug?tab=readme-ov-file"> vim-plug</a> for installation steps. Otherwise, I have provided the necessary steps below.

#### Neovim (If you want to install it on Neovim - Unix/Linux/WSL)

###### Unix, Linux, WSL

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

###### Linux (Flatpak)

```sh
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

<br>
<br>

Run this command in your terminal:
```bash
git clone https://github.com/Rektagun/Nvix $HOME/.config/nvim
```
<br>

But, if you already have used nvim before, you must have something in the directory..
In this case you should use:
```bash
mv .config/nvim .config/nvim_backup
git clone https://github.com/Rektagun/Nvix .config/nvim
mv .config/nvim_backup/ .config/nvim/
rm -rf .config/nvim_backup
```
This way, you'll keep the things you already have in the config, given that they won't collide with each other.
<br>

Another way is to delete the config file alltogether and then cloning the repo:
```bash
rm -rf .config/nvim
git clone https://github.com/Rektagun/Nvix .config/nvim
```
Wow

## Usage
To open nvim, type:
```bash
nvim
```

Now that `nvim` is open, you might see an error, just hit Esc and run `:PlugInstall`, now quit nvim by `:q` and reopen it.<br> 
You can see many keymappings, use them to navigate to the `plugins.vim` file, and uncomment the plugins you want to use (simply go on the line and use `:gcc` or `:gc` to comment/uncomment.
After doing that, run `:w` and then `:source %` or `:so` , you can also just use `Ctrl+S` (which is one of the keymappings to save-source and go to Startify at the same time, hehe).

## Themes/Colorschemes

## UI related plugins

## Plugins list
- 
## History - Lore

