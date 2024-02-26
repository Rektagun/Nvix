<div align="center">
	<a href="https://github.com/Rektagun/Nvix">
		<img src="https://github.com/Rektagun/Nvix/assets/99794571/d25d1f7d-87e6-408c-b08a-b384c621dcd4" width="200px"/>
</a>
  </div>

<div align="center">
	<a href="https://github.com/Rektagun/Nvix">HOME</a>
  <span> • </span>
    	<a href="https://github.com/Rektagun/Nvix/wiki">WIKI</a>
  <p></p>
</div> 




## What is Nvix?

<b>Nvix</b> is a collection of the .config/nvim files that are used to customize neovim that I have configured and used by me.

## Showcase

#### Startify for the start screen, more about that over <a href="https://github.com/mhinz/vim-startify">Startify</a>
![Screenshot (36)](https://github.com/Rektagun/Nvix/assets/99794571/5d808291-07a5-4dbe-bb97-e32471b86030)
<br>

#### ``<leader>e`` to open and close the file explorer, ``<Ctri+w> w`` to switch between open files and explorer
![Screenshot (40)](https://github.com/Rektagun/Nvix/assets/99794571/5f62b049-0474-40e9-8a6b-012ee664a2a1)
<br>


#### ``<leader>t`` to pull up the terminal. More about toggleterm here: <a href="https://github.com/akinsho/toggleterm.nvim">toggleterm</a>
![Screenshot (39)](https://github.com/Rektagun/Nvix/assets/99794571/409bafbc-8ded-42e3-b7d1-50d6f36338da)
<br>


#### Comes with the best colorscheme i.e. materialbox (use ``:colorscheme<Space><Tab>`` to see all colorschemes (you won't need to))
![Screenshot (41)](https://github.com/Rektagun/Nvix/assets/99794571/f1b339e7-ed10-4b27-8b5e-21f32261fb39)
<br>


## Directory structure

NOTE: Windows and Linux/Unix/WSL have different paths for nvim configurations:<br>

Linux/Unix/WSL: `` ~/.config/nvim/init.vim or ~/.vimrc (for compatibility with Vim) ``
<br>

Windows: `` C:\Users\username\AppData\Local\nvim\init.vim ``

And I am focusing on Linux/Unix/WSL

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

				
```



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
##### Checkout stable version (0.9.1):
```
git checkout v0.9.1
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

