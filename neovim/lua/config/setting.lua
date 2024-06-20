--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : setting.lua
--* Description      :
--**********************************************************

    ---
-- tab 4个空格
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.vartabstop = ""
-- 编码格式utf-8
vim.o.encoding = "utf-8"
-- 自动匹配
vim.o.showmatch = true
-- 换行自动缩进4个空格
vim.o.shiftwidth = 4
-- 鼠标操作
vim.o.mouse = ""
-- global leader
vim.g.mapleader = " "
--背景颜色透明
vim.g.background_transparency = true
-- 高亮当前行
vim.o.cursorline = true
-- 显示行号
vim.o.number = true
--自动缩进
vim.o.autoindent = true
--忽略大小写
vim.o.ignorecase = true
--搜索时有大写字母， 关闭大小写忽略
vim.o.smartcase = true
-- 上下保留10行
vim.o.scrolloff = 10
vim.o.syntax = "enable"
--自动换行
vim.o.wrap = true

-- 搜索高亮
vim.g.hlsearch = true

vim.keymapping = {
    smap = vim.api.nvim_set_keymap,
    dmap = vim.api.nvim_del_keymap,
    bsmap = vim.api.nvim_buf_set_keymap,
    bdmap = vim.api.nvim_buf_del_keymap,
    opts = { noremap = true, silent = true },
}
