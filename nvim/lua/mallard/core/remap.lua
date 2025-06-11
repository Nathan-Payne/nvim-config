-- neovim specific remaps, see /after for plugin specific remaps

-- allows highlighted text to be moved
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-up>", ":m '<-2<CR>gv=gv")

-- better cursor positions on join, screen up/down and search results
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- disables Q
vim.keymap.set("n", "Q", "<nop>")

-- save + copy file or selection
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")
vim.keymap.set("v", "<C-c>", "<cmd> execute 'normal \"+y' <CR>")

-- formats JSON files using jq
vim.keymap.set("n", "<C-J>", ":%!jq '.' <CR>")
