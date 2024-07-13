# Yet Another Zen Mode Plugin

This is my own version of zenmode, highly inspired by [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua).

https://github.com/Snikimonkd/yazmp/assets/72211350/4d3028a2-bf4c-42ed-b25e-3f6c87a7f40d

## Install

Just use your plugin manager, I prefer [lazy](https://github.com/folke/lazy.nvim):

```lua
require("lazy").setup({
    "Snikimonkd/yazmp",
)}
```

## You are ready to go

Now you need to set up a keymap, or use it as a command (you can specify a width, default = 30):

```lua
vim.keymap.set("n", "<leader>zm", ":Zenmode<CR>")
-- or with width
vim.keymap.set("n", "<leader>zm", ":Zenmode 20<CR>")
```
