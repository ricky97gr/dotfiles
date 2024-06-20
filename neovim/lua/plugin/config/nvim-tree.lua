--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : nvim-tree.lua
--* Description      :
--**********************************************************

require("nvim-tree").setup({})

-- nvim-tree, 打开文件列表，打开当前文件所在的位置:q
vim.keymapping.smap("n", "<leader>1", "<cmd>NvimTreeToggle<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", vim.keymapping.opts)
