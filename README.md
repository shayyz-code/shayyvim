<p align="center">
<img width="640" height="359" alt="shayyvim" src="https://github.com/user-attachments/assets/2127ed7f-6882-48ad-922b-0d1769517775" />
</p>

# **ShayyVim**

ShayyVim is designed to be perfect, minimal, functional, and aesthetic for my POV.
It has a custom dashboard, fast LSP setup, treesitter, telescope, and a clean UI based on my personal preferences.


## Features

* **Discord Presence** with cord.nvim
* **Custom Alpha Dashboard** with unique ASCII art
* Clean UI with icons, borders, and colors
* Blazing fast startup using **lazy.nvim**
* Built-in **LSP** with autocompletion ( rust, go, zig, c, c++, ts, etc. )
* Treesitter enhanced syntax
* Fuzzy searching with **Telescope**
* File explorer with **Nvim-Tree** or **Oil.nvim**
* Highly optimized defaults and keymaps
* Clean modular Lua structure for easy customization


## Installation

### **Prerequisites**

* Neovim **0.11++**
* A Nerd Font (e.g., JetBrainsMono Nerd Font)

### **Install**

```bash
git clone https://github.com/shayyz-code/shayyvim.git ~/.config/nvim
```

Open Neovim:

```bash
nvim
```

Lazy.nvim will automatically install all plugins.


## Customize Dashboard (with alpha.nvim)

My setup includes a fully custom banner:

You may replace it with your own.
```lua
dashboard.section.header.val = {
  ... (your ASCII art)
}
```

Already prompted a custom highlight color:

```lua
vim.api.nvim_set_hl(0, "ShayyHeader", { fg = "#7dd3fc", bold = true })
```

This lets the dashboard stay consistent across colorscheme changes.


## Keymaps

| Mode   | Key          | Action                 |
| ------ | ------------ | ---------------------- |
| Normal | `D-p`        | Telescope Find Files   |
| Normal | `<leader>fg` | Live Grep              |
| Normal | `D-e`        | File Explorer          |
| Normal | `A-k`        | Move line up           |
| Normal | `A-j`        | Move line down         |
| Normal | `A-[`        | Switch to left tab     |
| Normal | `A-]`        | Switch to right tab    |

(Add/remove based on your needs)


## Plugins Included

* **lazy.nvim** — plugin manager
* **alpha-nvim** — dashboard
* **nvim-web-devicons**
* **telescope.nvim**
* **nvim-lspconfig**
* **nvim-cmp** + snippets
* **LuaSnip**
* **nvim-treesitter**
* **lualine**
* **neo-tree**
* **cord.nvim** - discord presence
* **colorizer** - sample color for color codes


## Configuration

Everything is modular, so you can customize:

* `lua/vim-options` → keymaps, settings
* `lua/plugins` → plugin configs

## Roadmap

* [ ] Add theme previews
* [ ] Add installer script
* [ ] Add keymap cheatsheet
* [ ] Add plugin showcase GIF

## Contributing

Pull requests are welcome!
Feel free to fork, open issues, or submit suggestions.


## Author

**Shayy**

> One of *Vimmers*


## Enjoy my setup for Neovim?

If you like this setup, consider giving the repo a **star** on GitHub ⭐
