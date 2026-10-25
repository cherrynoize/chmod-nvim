# chmod.nvim

Run `chmod` on the current file from Neovim and get a notification confirming the result.

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "YOUR_USERNAME/chmod.nvim", cmd = "Chmod" }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use "YOUR_USERNAME/chmod.nvim"
```

Built-in packages (no plugin manager):

```sh
git clone https://github.com/YOUR_USERNAME/chmod.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/chmod.nvim
```

No `setup()` call is needed.

## Usage

```vim
:Chmod x      " same as +x
:Chmod +x
:Chmod -x
:Chmod 755
:Chmod u+x
```

A bare `x` or `rw` is treated as `+x` / `+rw`. Any mode accepted by `chmod` works.

## Suggested keymap

Add this to your config:

```lua
vim.keymap.set("n", "<leader>X", "<cmd>Chmod +x<CR>", { desc = "Make current file executable" })
```
