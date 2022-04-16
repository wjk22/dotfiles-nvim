# dotfiles-nvim

Hehe, neovim is IMHO the best editor out there but setting it up can be 
time consuming ..  and I like to use both nvim and vscode ..

btw it is good to copy other peoples configs, but with a brain,
if you do not understand something remove it until you know how to use it.

Why you should use nvim? ..try to do <Esc>d3w in other editors to delete 3 words  or df to 
delete a function

## Linux

0. Do the basic vim tutorial at https://www.openvim.com/

1. Install neovim https://github.com/neovim/neovim/wiki/Installing-Neovim
   I use the latest stable release, download the deb package and install 
   it with dpkg -i, version 0.7 was just released.
    
   Nvim release 0.7<br>
   https://github.com/neovim/neovim/releases/tag/v0.7.0

2. Install VimPlug - https://github.com/junegunn/vim-plug<br>
   the install command copies the file plug.vim file to ~/.local/share/nvim/site/autoload/<br>
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

3. Alias v=nvim ;) .. check if everthing is running with v. Then <Esc> :checkhealth

4. Run :PlugInstall now to install plugins.

5. Nvim's config files are located in ~/.config/nvim and the start point is init.nvim<br>
   you can include config files with, plugins config scripts go to ~/.config/nvim/after/plugin<br>
   " is used for comments 
`runtime (filename)` # like runtime ./plug.vim

6. setup your color cheme, I found a nice one at dogcraftz, copy files to ~/.config/nvim/colors and
edit init.vim, my example here is <br>
```vim 
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
```

## Windows

1. Install Neovim with scoop
```
scoop intall Neovim
```

