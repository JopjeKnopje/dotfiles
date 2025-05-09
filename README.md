<div align=center>

# Dotfiles

Managed using [GNU stow](https://www.gnu.org/software/stow/).

</div>

## Installation

```
$ git clone git@github.com:JopjeKnopje/dotfiles.git
```

To install the binaries to `~/.local/bin` run.
```
bash bin/install.sh
```




To install the files simply symlink them using stow
```
$ cd dotfiles
$ stow neovim
```
This will create a symlink from your `$HOME` dir to the content of in this case the `neovim` directory.


Uninstalling configs
```
$ cd dotfiles
$ stow -D neovim
```


### Font installation

Download the Hack nerdfont from [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip) and use the UI to install them instead of copying them manually to `~/.local/share/fonts` (for some reason this doens't work for me).

<br>


## Content
## [zsh](https://www.zsh.org/)
TBA
## [terminator](https://gnome-terminator.org/)
TBA
## [neovim](https://github.com/neovim/neovim/releases/tag/v0.10.4)
For image.nvim to work you'll need to install the following packages.
```
sudo apt-get install luajit
sudo apt-get install libmagickwand-dev
sudo apt-get install libgraphicsmagick1-dev
```
TBA
# [fzf-keybindings](https://github.com/junegunn/fzf?tab=readme-ov-file#key-bindings-for-command-line)
TBA
## [git-fzf](https://github.com/junegunn/fzf-git.sh)
TBA
## [powerlevel10k](https://github.com/romkatv/powerlevel10k)
TBA
## [ranger](https://github.com/ranger/ranger)
TBA
## [grc](https://github.com/garabik/grc)
TBA
## [tmux](https://github.com/tmux/tmux)
here is a handy [tmux cheatsheet](https://tmuxcheatsheet.com/) for learning some keybinds.
If you want to use the plugins specified in the `tmux.conf`, you'd need to install [tpm](https://github.com/tmux-plugins/tpm)
```
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### Installation
When running tmux for the first time you should run `prefix` + `I` to install the plugins.


#### Features
This is just a small list of the stuff I've tweaked on tmux.


#### Save and restore sessions

Using the [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect?tab=readme-ov-file) plugin you can save and restore tmux sessions, I've also added the [obsession.vim](https://github.com/tpope/vim-obsession) plugin to sync it with neovim.

#### Keybindings
- `prefix + CTRL-s` - save tmux session 
- `prefix + CTRL-r` - restore tmux session 

When using obsession.vim to "record" you vim session simply run `:Obsession` while in your neovim project.
The cool part is that after you've ran it once it will remember its state, and will continue recording the next time you open up that vim session.
You can stop recording with `:!Obsession`

### [tms](https://github.com/jrmoulton/tmux-sessionizer)
I've installed [tms v0.4.2](https://github.com/jrmoulton/tmux-sessionizer/releases/tag/v0.4.2) in `~/.local/bin`

<br>

## TODO NVIM

- [ ] Make obisidan_vault a env variable, so other TMUX and tms can also source it.
- [ ] Setup path for obisidan vault, which will silently fail if it doens't exist instead of this "hard" error.
- [ ] When using obisidan vault use difffent color theme.
- [ ] Setup tmux shortcut to switch to obisidan session.
- [ ] Fix `after/ftplugin/terraform.lua` not being honoured.
- [ ] Setup tmux shortcuts to move back to previous session like `CTRL + o` in vim.
- [ ] Fix nvim surround working.
- [ ] Customize snacks.dashboard to disable all the shit we don't use.
- [ ] Map `tms` to `tab`.
- [ ] Remove terminal?
- [ ] Try to write to python and JS to see if the dev envs are actually working properly
- [ ] Move essentially the enitire lazy vim repo into the dotfiles, so the entire config is local.
- [ ] Setup default language servers for shit I use.
- [ ] Enable `folke/noice.nvim` so we can search through the notification list, but also disable the dumb-ass vscode style search bar.
- [ ] Toggle images shortcut in markdown.
- [x] Switch to kitty for better image rendering.
- [ ] Open images in `feh`, also add `~/.config/feh/` with a scroll to zoom bind.



## TODO
- [ ] Add dynamic config that loads shit depending on the system its on, for example work laptop or codam pc.
- [ ] Setup tmux mouse copy.
- [ ] When running the `dotfiles` command tell nvim's `ctrl-f` to also search for hidden files.
- [ ] Setup kubectx.
- [ ] Setup kubectl config and way to switch between stuff projects.
- [ ] Setup k9s.
- [ ] Add script that "stows" all configs.
- [ ] Add more info to README file.
- [ ] Add list of all epic tools.
- [ ] Add type of font used.
- [ ] Tmux notification when command is done running (for terraform and the like). 
- [ ] Add `./local` to this repo.
- [ ] Installation script which will download all the programs and setup their plugins.
- [x] Markdown preview plugin for nvim
- [ ] Switch to kitty for so we can skip ueberzug for image previews.


<br>
<br>


### Credits / inspo
- [brw/dotfiles](https://github.com/brw/dotfiles)
- [LunarVim/Neovim-from-scratch](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
- [theprimeagen/remap.lua](https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua)
- [linkarzu - Images Neovim](https://linkarzu.com/posts/neovim/images-neovim/)
- [BWindey - dotfiles](https://github.com/BWindey/nvim-config/blob/main/lua/plugins/lsp-config.lua)
