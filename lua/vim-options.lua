vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"
vim.cmd "set number"


vim.g.mapleader = " "

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line down(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line up(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line down(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line up(v)
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true }) -- move line down(i)
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true }) -- move line up(i)

-- Move to previous buffer
vim.keymap.set("n", "<A-[>", ":BufferPrevious<CR>", { silent = true })

-- Move to next buffer
vim.keymap.set("n", "<A-]>",     ":BufferNext<CR>", { silent = true })

