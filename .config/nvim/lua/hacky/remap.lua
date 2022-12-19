vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open Tagbar
vim.keymap.set("n", "<leader>tb", vim.cmd.TagbarToggle)

-- Python
vim.keymap.set("n", "<leader>pp", ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>")
