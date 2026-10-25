# chmod-nvim

`chmod` current file from inside Neovim.

## What's included

This sets up the:
- `Chmod` command
- a Lua API to effortlessly run `chmod` commands in Neovim
- a nice notification system which verifies the result of the operation and
  lets you know

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "cherrynoize/chmod-nvim", cmd = "Chmod" }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use "cherrynoize/chmod-nvim"
```

Built-in packages (no plugin manager):

```sh
git clone git@github.com:cherrynoize/chmod-nvim.git \
  ~/.local/share/nvim/site/pack/plugins/start/chmod-nvim
```

Just like that.

## Examples

Using the vim command:

```vim
:Chmod x     " same as +x
:Chmod +w
:Chmod -r
:Chmod 755
:Chmod u+x
```

or through the API:

```lua
require("chmod").run("+w")                    -- file in current buffer
require("chmod").run("644", "/path/to/file")  -- specific file
```

A bare `x` or `rw` is treated as `+x` / `+rw`. Any mode accepted by `chmod` works.

## Configure keymaps

You can add something like this to your Neovim config:

```lua
vim.keymap.set("n", "<leader>X", function()
  require("chmod").run("+x")
end, { desc = "Make current file executable" })
```

to make the current file executable using a keymap. Or using the command syntax:

```lua
vim.keymap.set("n", "<leader>X", "<cmd>Chmod +x<CR>", {
  desc = "Make current file executable"
})
```
