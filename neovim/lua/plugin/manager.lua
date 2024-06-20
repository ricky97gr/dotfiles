--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : manager.lua
--* Description      :
--**********************************************************

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugin.list")

vim.keymapping.smap("n", "<leader>la", "<cmd>Lazy<CR>", vim.keymapping.opts)
