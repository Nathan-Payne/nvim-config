-- Debug adapter protocol (DAP) setup
local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/home/mallard/dev/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003,
        pathMappings = {
            ["/var/www"] = "${workspaceFolder}"
        }
    }
}

-- DAP ui plugin config
local dapui = require('dapui')

dapui.setup()

vim.keymap.set("n", "<leader>dd", "<cmd>lua require('dapui').toggle()<CR>", { noremap = true });
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true });
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true });
vim.keymap.set("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true });
vim.keymap.set("v", "<leader>de", "<cmd>lua require('dapui').eval()<cr>", { noremap = true });

vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})

-- todo: get working with docker
-- zend_extension=xdebug.so
-- xdebug.mode = debug,profile
-- xdebug.output_dir = /var/www/results
-- xdebug.start_with_request = yes
-- xdebug.idekey=docker
-- xdebug.client_port=9003
-- xdebug.client_host=host.docker.internal
-- xdebug.discover_client_host=0
