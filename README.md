# Yet Another Zen Mode Plugin

This is my own version of zenmode, highly inspired by [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua).

https://github.com/Snikimonkd/yazmp/assets/72211350/7077c7db-26d6-434f-8733-95c1e583c8d5

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

To lazy load and set-up keybinds via lazy
```lua
require("lazy").setup({
    {
        "Snikimonkd/yazmp",
        -- event = "VeryLazy",  -- to load after loading the nvim UI
        keys = {  -- to load the plugin only when the keybinding is pressed
            {"<leader>zm", "<cmd>Zenmode 30<CR>", desc="Toggle ZenMode"}
        }
    },
)}
```
