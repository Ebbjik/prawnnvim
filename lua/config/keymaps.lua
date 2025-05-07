-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 复制到剪贴板
vim.keymap.set("v", "<leader>y", '"+y', { desc = "复制到剪贴板" })
vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "复制整行到剪贴板" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "复制光标位置后的内容到剪贴板" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "复制整行到剪贴板" })

-- 从剪贴板粘贴
vim.keymap.set("n", "<leader>p", '"+p', { desc = "从剪贴板粘贴" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "从剪贴板粘贴到光标前" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "粘贴到选中的区域" })
vim.keymap.set("v", "<leader>P", '"+P', { desc = "粘贴到选中的区域" })
