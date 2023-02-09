-- Set the space key as leaderkey
vim.g.mapleader = " "

-- Jump to default vim file navigation view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open Tagbar
vim.keymap.set("n", "<leader>tb", vim.cmd.TagbarToggle)

-- Python
-- Run python code in a floating window
vim.keymap.set("n", "<leader>pp", ":FloatermNew --autoclose=0 python3 %<CR>")

-- Markdown
-- Toggle Live Preview
vim.keymap.set("n", "<leader>md", vim.cmd.MarkdownPreviewToggle)

-- GO!
-- Run GO!
vim.keymap.set("n", "<leader>go", ":FloatermNew --autoclose=0 go run %<CR>")

-- Formatting
vim.keymap.set("n", "<leader>fm", vim.cmd.Format)

-- Rust 🦀
-- Rust (run) clean
vim.keymap.set("n", "<leader>rr", ":FloatermNew --autoclose=0 cargo run --quiet %<.rs <CR>")
-- Rust (run) verbose
vim.keymap.set("n", "<leader>rv", ":FloatermNew --autoclose=0 cargo run %<.rs <CR>")

-- Add Semicolon to the end of the line
vim.keymap.set("n", "<leader>;", "A;<Esc>")
