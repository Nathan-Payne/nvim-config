-- allows highlighted text to be moved
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")

-- better cursor positions on join, screen up/down and search results
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- preserves [d]eleted selection in register after paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yanks to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes to the void register
vim.keymap.set({ "n", "v" }, "<leader>x", [["_d]])

-- disables Q, look into tmux sessionizer, format shortcut
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quickfix navigation??
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace all under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- save + copy file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")

