# dotfiles

![preview](./.github/docs/preview.png)

## Dependencies

Before running the installation script, you should install the
following dependencies

- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Git](https://git-scm.com/downloads)
- [Tmux](https://github.com/tmux/tmux)
- [fzf](https://github.com/junegunn/fzf)
- [Vim](https://www.vim.org/download.php)
- [Vim Plug](https://github.com/junegunn/vim-plug)
- [Node >=16](https://nodejs.org/en/download/)
- [Bat](https://github.com/sharkdp/bat#installation)


## Info

### Zsh
Zsh is using a custom theme called [`x`](./zsh/themes/x.zsh-theme).

Also, it uses the following plugins:
- `git`
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`


### Tmux
Tmux has the mouse scrolling enabled. Also, the following keys are being replaced.
- `ctrl-b` -> `ctrl-space`

Last, typing the binding `ctrl-space-enter`, a new small window will be opened vertically.

## Installation

> **WARNING**: The script will uninstall & remove all the  configuration files. It will install them from scratch. Be sure to backup your files first.

Run:

```bash
git clone https://github.com/Stavrospanakakis/dotfiles.git
cd dotfiles
sh install.sh
```

