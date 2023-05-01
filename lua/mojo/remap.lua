vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- group movement on visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the beginning
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the center while searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- pasting (27:10)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- use leader to copy to and from system
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- more keymaps
vim.keymap.set("i", "<C-b>", "<ESC>^i") -- move to beginning of line on insert mode
vim.keymap.set("i", "<C-v>", "<End>") -- move to end of line in insert mode
vim.keymap.set("n", "<C-h>", "<C-w>h") -- move to left window on normal mode
vim.keymap.set("n", "<C-l>", "<C-w>l") -- move to right window on normal mode
vim.keymap.set("n", "<C-j>", "<C-w>j") -- move to down window on normal mode
vim.keymap.set("n", "<C-k>", "<C-w>k") -- move to up window on normal mode
