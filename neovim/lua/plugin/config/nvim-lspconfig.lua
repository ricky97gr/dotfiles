--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : nvim-lspconfig.lua
--* Description      :
--**********************************************************

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer

local on_attach = function(_, bufnr)
	-- Buffer local mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local opts = { noremap = true, silent = true, buffer = bufnr }
	--todo: 可以退出<Esc>gr 和 gh
	--vim.keymapping.smap("t", "<Esc>", "<cmd>q<CR>", vim.keymapping.opts)
	--vim.keymapping.smap("n", "<Esc>", "<cmd>:q<CR>", vim.keymapping.opts)
	-- 查找引用
	vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references theme=dropdown <CR>", opts)
	-- 跳转到定义
	vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions theme=dropdown<CR>", opts)

	vim.keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>", opts)
	--r 新窗口中打开
	-- t 当前窗口打开
	-- 变量重名 rename
	vim.keymap.set("n", "<space>rn", "<cmd>Lspsaga rename<CR>", opts)

	-- 查看变量类型/声明？
	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	-- 显示变量可执行的操作
	vim.keymap.set({ "n", "v" }, "<space>ca", "<cmd>Lspsaga code_action <CR>", opts)
	-- 查看实现的地方
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

	vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)
	-- 	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
	-- 	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
end

-- lsp server setting
lspconfig.gopls.setup({
	cmd = { "gopls", "serve" },
	filetypes = { "go", "gomod" },
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
	on_attach = on_attach,
})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	on_attach = on_attach,
})

require("lspconfig").rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = false,
			},
		},
	},
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
	on_attach = on_attach,
})

require("lspconfig").bashls.setup({
	cmd = { "bash-language-server", "start" },
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)",
		},
	},
	filetypes = { "sh" },
	root_dir = util.find_git_ancestor,
	on_attach = on_attach,
})

require("lspconfig").pylsp.setup{
	cmd = {"pylsp"},
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = {'W391'},
					maxLineLength = 100
				}
			}
		}
	},
	filetypes = {"python"},
	single_file_support = true,
	on_attach = on_attach
}
