--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : mason-lspconfig.lua
--* Description      :
--**********************************************************

require("mason-lspconfig").setup{
	ensure_installed = { "gopls", "lua_ls", "rust_analyzer", "bashls","pylsp" },
}
