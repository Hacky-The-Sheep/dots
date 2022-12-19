-- Set the space key as leaderkey
vim.g.mapleader = " "

-- Jump to default vim file navigation view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open Tagbar
vim.keymap.set("n", "<leader>tb", vim.cmd.TagbarToggle)

-- Python
-- Run Python Code
vim.keymap.set("n", "<leader>pp", ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>")

-- Markdown
-- Toggle Live Preview
vim.keymap.set("n", "<leader>md", vim.cmd.MarkdownPreviewToggle)
