# nvim
Personal NeoVim distro.

## Prerequisites
Neovim `0.10.0` or newer. Verify your Neovim version with:
```sh
nvim --version
```

## Installation

> **Notice**: Backup your existing Neovim configuration first!
> ```sh
> mv ~/.config/nvim ~/.config/nvim.bak
> ```

1. Clone the repository (including submodules):

```sh
git clone --recurse-submodules https://github.com/rice-grain/nvim
```

2. Move the content of `src/` to `~/.config/nvim`.

```sh
cp -r nvim/src ~/.config/nvim
```
