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

-- 切换输入法函数 (fcitx4)
local function switch_input_en()
  vim.fn.jobstart("fcitx-remote -c")
end

local function switch_input_zh()
  vim.fn.jobstart("fcitx-remote -o")
end

-- i模式 jj => 切英文 + 退出插入
vim.keymap.set("i", "jj", function()
  switch_input_en()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end, { noremap = true, silent = true })

-- 进入插入模式时自动切中文
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    switch_input_zh()
  end,
})
