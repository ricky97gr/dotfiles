--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : neotest_ns.lua
--* Description      :
--**********************************************************

local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config({
	virtual_text = {
		format = function(diagnostic)
			local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
			return message
		end,
	},
}, neotest_ns)

require("neotest").setup({
	-- your neotest config here
	adapters = {
		require("neotest-go"),
	},
})
vim.keymapping.smap("n", "<leader>rt", "<cmd>lua require('neotest').run.run()<CR>", vim.keymapping.opts)
vim.keymapping.smap(
	"n",
	"<leader>rf",
	"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
	vim.keymapping.opts
)
vim.keymapping.smap("n", "<leader>to", "<cmd>Neotest output<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>tw", "<cmd>Neotest watch<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>tp", "<cmd>Neotest output-panel<CR>", vim.keymapping.opts)
vim.keymapping.smap("n", "<leader>ts", "<cmd>Neotest summary<CR>", vim.keymapping.opts)
