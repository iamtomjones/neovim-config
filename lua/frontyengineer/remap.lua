vim.g.mapleader = " "
-- project wide
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- bring next line up to this line
vim.keymap.set("n", "J", "mzJ`z")

-- move down the page
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- move up the page
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- next item and center screen
vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete line
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format page
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- next and previous buffers 
vim.keymap.set("n", "<S-p>", ":bp<CR>")
vim.keymap.set("n", "<S-n>", ":bn<CR>")

-- Moving chunks of text
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")

-- Open current file in browser
vim.keymap.set("n", "<leader>o", "<cmd>!open %<CR>", { silent = true })

-- Search and replace all
vim.keymap.set("n", "<S-f>", ":0,$s/")

-- open buffers
vim.keymap.set("n", "<S-b>", ":Telescope buffers<CR>");
