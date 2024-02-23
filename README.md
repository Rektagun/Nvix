<h1 align="center">NvIx</h1>
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
## Directory structure
```bash
├── init.vim
├── remap.vim
├── set.vim
├── after
	└── plugins
		├── colors.lua
		├── nvim-comp.lua
		└── nvim-tree.lua
├── lua
	└── init.lua
├── plugin
	└── packer_compiled.lua
```



## Installation - Must read
So the most forward way to clone a/the repo is to use:
```bash
git clone https://github.com/Rektagun/Nvix .config/nvim
```

But, if you already have used nvim before, you must have something in the directory, in this case you should use:
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
## Themes/Colorschemes

## UI related plugins

## Plugins list
- 
## History

