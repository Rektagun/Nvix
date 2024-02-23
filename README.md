<h1 align="center">Nvix</h1>
<div align="center">
	<a href="https://github.com/Rektagun/Nvix">HOME</a>
  <span> • </span>
    	<a href="https://github.com/Rektagun/Nvix/wiki">WIKI</a>
  <p></p>
</div> 

<div align="center">

  </div>

## Showcase

## What is it?


NOTE: Windows and Linux/Unix/WSL have different paths for nvim configurations:
```
Linux/Unix/WSL: ~/.config/nvim/init.vim or ~/.vimrc (for compatibility with Vim)
Windows: C:\Users\username\AppData\Local\nvim\init.vim
```

And I am focusing on Linux/Unix/WSL
## Directory structure


```bash
$HOME
	└── /.config
		└── init.vim
		└── remap.vim
		└── set.vim
		└── after
			└── plugins
				└── colors.lua
				└── nvim-comp.lua
				└── nvim-tree.lua
		└── lua
			└── init.lua
			└── plugin
				└── packer_compiled.lua
```



## Installation - Must read
### Prerequisites:
- Nvix uses <a href="https://github.com/junegunn/vim-plug?tab=readme-ov-filehttps://github.com/junegunn/vim-plug?tab=readme-ov-file"> vim-plug</a> as the plugin manager. <br>
	   -> Reffer to <a href="https://github.com/junegunn/vim-plug?tab=readme-ov-filehttps://github.com/junegunn/vim-plug?tab=readme-ov-file"> vim-plug</a> for installation steps. Also, I have provided the necessary steps below.

#### Neovim

###### Unix, Linux

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

###### Linux (Flatpak)

```sh
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

#### Vim

###### Unix

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```


<br>
<br>

:
```bash
git clone https://github.com/Rektagun/Nvix $HOME/.config/nvim
```

But, if you already have used nvim before, you must have something in the directory..
In this case you should use:
```bash
mv .config/nvim .config/nvim_backup
git clone https://github.com/Rektagun/Nvix .config/nvim
mv .config/nvim_backup/ .config/nvim/
rm -rf .config/nvim_backup
```
This way, you'll keep the things you already have in the config, given that they won't collide with each other.


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

Now that `nvim` is open, you can see many keymappings, use them to navigate to the `plugins.vim` file, and uncomment the plugins you want to use (simply go on the line and use `:gcc` or `:gc` to comment/uncomment.
After doing that, run `:w` and then `:source %` or `:so` , you can also just use `Ctrl+S` (which is one of the keymappings to save-source and go to Startify at the same time, hehe).

## Themes/Colorschemes

## UI related plugins

## Plugins list
- 
## History - Lore

