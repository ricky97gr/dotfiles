--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : mapping.lua
--* Description      :
--**********************************************************

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "H", "^", opts)
vim.keymap.set("n", "L", "$", opts)
vim.keymap.set("i", "jj", "<Esc>", opts)

vim.keymap.set("v", "H", "^", opts)
vim.keymap.set("v", "L", "$", opts)

vim.keymap.set("n", "<C-u>", "15k", opts)
vim.keymap.set("n", "<C-d>", "15j", opts)

--插入模式的上下移动
vim.keymap.set("i", "<A-k>", "<up>", opts)
vim.keymap.set("i", "<A-j>", "<down>", opts)
vim.keymap.set("i", "<A-h>", "<left>", opts)
vim.keymap.set("i", "<A-l>", "<right>", opts)

-- 分屏
vim.keymap.set("n", "sp", "<cmd>vsp<CR>", opts)
vim.keymap.set("n", "sh", "<cmd>sp<CR>", opts)
vim.keymap.set("n", "sc", "<C-w>c", opts)
vim.keymap.set("n", "so", "<C-w>o", opts)

vim.keymap.set("v", "<C-c>", '"+y', opts)

-- 取消搜索高亮
vim.keymap.set("n", "<Esc>", "<cmd>:noh<CR>", opts)
