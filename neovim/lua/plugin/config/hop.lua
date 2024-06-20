--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : hop.lua
--* Description      :
--**********************************************************

require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })

vim.keymapping.smap("n", "<leader>hw", "<cmd>HopWord<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>hl", "<cmd>HopLine<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>hc", "<cmd>HopChar1<CR>", vim.keymapping.opts)
