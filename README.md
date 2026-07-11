<div align=center>

# Dotfiles

Managed using [dotbot](https://github.com/anishathalye/dotbot).

</div>

TBA talk about stuff I'm using

## Installation

Clone the repo

```
$ git clone git@github.com:JopjeKnopje/dotfiles.git
```

### Manual steps
Install tools and deps

```bash
# i3 stuff (you could skip this if you don't want to use i3)
sudo apt-get install i3 rofi libnotify-bin notify-osd picom xdotool maim arandr lxappearance dunst playerctl

sudo apt-get install terminator tmux zsh curl
```


Font installation

```bash
./install-scripts/fonts.sh
```

Install p10k and setup zsh

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
chsh -s $(which zsh)
```


Setup tmux's plugin manager (tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


### Monitor setup
The monitor configs are saved in `~/dotfiles/i3/.config/i3/displays/<HOSTNAME>.sh`. You can generate a new config script using `arandr` and saving the output file to that location.


### Stuff I use
- [i3](https://i3wm.org/)
- [lazygit](https://github.com/jesseduffield/lazygit/releases)
Delta pager
- [terminator](https://gnome-terminator.org/)
- [neovim](https://github.com/neovim/neovim/releases/tag/v0.10.4)
- [fzf-keybindings](https://github.com/junegunn/fzf?tab=readme-ov-file#key-bindings-for-command-line)
- [git-fzf](https://github.com/junegunn/fzf-git.sh)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
-  [jless](https://github.com/PaulJuliusMartinez/jless)
-  [grc](https://github.com/garabik/grc)
- [tmux](https://github.com/tmux/tmux)

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




## TODO
### i3
- [x] Taskbar on primary display
- [ ] Setup polybar
- [ ] Script to check if monitors are connected, if we cannot find any just use the default one (which is not built in)
- [ ] Lock certain workspaces to second monitor (if we are running a second monitor setup, look into `include` keyword for i3, you can also do command substitution)
- [ ] Screen timeout thingy
- [ ] Keep split window open without filling screen (yeah I know...)
- [ ] Move to newer non-apt-installed version of rofi
- [ ] CAPSLOCK remap for laptop and other non keychron keyboards
- [ ] Fix `XF86AudioNext` and `XF86AudioPrev` not working with spotify (and probably other apps as well).
- [ ] Setup proper screenshotter [maim](https://gist.github.com/dianjuar/ee774561a8bc02b077989bc17424a19f) script. It should save the screenshot _AND_ copy to clipboard, also send a notification?

### Neovim
- [x] Make obisidan_vault a env variable, so other TMUX and tms can also source it.
- [x] Setup path for obisidan vault, which will silently fail if it doens't exist instead of this "hard" error.
- [ ] When using obisidan vault use difffent color theme.
- [ ] ~Setup tmux shortcut to switch to obisidan session.~
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


### Other
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
