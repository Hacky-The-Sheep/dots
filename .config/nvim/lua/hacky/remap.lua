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
vim.keymap.set("n", "<leader>go", ":FloatermNew --autoclose=0 !go run %<CR>")

-- CPP
-- Compile and Run CPP
vim.keymap.set("n", "<leader>cpp", ":FloatermNew --autoclose=0 g++ % -o %< && ./%< <CR>")

-- Formatting
vim.keymap.set("n", "<leader>fm", vim.cmd.Format)

-- Rust 🦀
-- vim.keymap.set("n", "<leader>rs", ":FloatermNew --autoclose=0 rustc %<.rs && ./%< <CR>")
-- Rust (run) clean
vim.keymap.set("n", "<leader>rr", ":FloatermNew --autoclose=0 cargo run --quiet %<.rs <CR>")
-- Rust (run) verbose
vim.keymap.set("n", "<leader>rv", ":FloatermNew --autoclose=0 cargo run %<.rs <CR>")

-- Nvim-Tree 🌲
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
