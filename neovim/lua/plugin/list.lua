--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : list.lua
--* Description      :
--**********************************************************

return {
  {
    "folke/tokyonight.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
  },
	{
		"folke/which-key.nvim",
		lazy = false,
		config = function()
			require("plugin.config.which-key")
		end,
	},
	-- 统计开始时间
  {
    "dstein64/vim-startuptime",
		-- lazy-load on a command
		cmd = "StartupTime",
		-- init is called during startup. Configuration for vim plugins typically should be set in an init function
		init = function()
			vim.g.startuptime_tries = 10
		end,
	},
	-- 自动保存
	{
		"Pocco81/auto-save.nvim",
		config = function()
			require("plugin.config.auto-save")
		end,
	},
	-- 文件管理系统
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for file icons
		tag = "nightly", -- optional, updated every week. (see issue #1193)
		config = function()
			require("plugin.config.nvim-tree")
		end,
	},
	-- 自动安装lsp服务
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = function()
			require("plugin.config.mason-nvim")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("plugin.config.mason-lspconfig-nvim")
        end,
	},
	-- lsp配置
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugin.config.nvim-lspconfig")
		end,
	},
	-- 文件字母查找
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("plugin.config.telescope")
		end,
	},
	-- 括号自动补全
	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugin.config.nvim-autopairs")
		end,
	},
	-- 自动补全
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "onsails/lspkind-nvim" }, -- 为补全添加类似 vscode 的图标
			{ "hrsh7th/vim-vsnip" }, -- vsnip 引擎，用于获得代码片段支持
			{ "hrsh7th/cmp-vsnip" }, -- 适用于 vsnip 的代码片段源
			{ "hrsh7th/cmp-nvim-lsp" }, -- 替换内置 omnifunc，获得更多补全
			{ "hrsh7th/cmp-path" }, -- 路径补全
			{ "hrsh7th/cmp-buffer" }, -- 缓冲区补全
			{ "hrsh7th/cmp-cmdline" }, -- 命令补全
			{ "f3fora/cmp-spell" }, -- 拼写建议
			{ "rafamadriz/friendly-snippets" }, -- 提供多种语言的代码片段
			{ "lukas-reineke/cmp-under-comparator" }, -- 让补全结果的排序更加智能}}
		},
		config = function()
			require("plugin.config.nvim-cmp")
		end,
	},
	-- buffer
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugin.config.bufferline")
		end,
	},
	-- 颜色高亮
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugin.config.nvim-treesitter")
		end,
	},
	-- one dark 主题
	{
		"navarasu/onedark.nvim",
		lazy = false,
		config = function()
			require("plugin.config.onedark")
		end,
  },
	-- nightly
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	-- lsp美化
	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = function()
			require("plugin.config.lspsaga")
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			--Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugin.config.gitsigns")
		end,
	},
	-- tmux nvim manager
	{
		"christoomey/vim-tmux-navigator",
		config = function()
			require("plugin.config.tmux-navigator")
		end,
	},
	--状态栏插件
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("plugin.config.lualine")
		end,
	},
	-- Git 提交插件
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
		config = function()
			require("plugin.config.vim-fagitive")
		end,
	},
	-- 代码注释插件
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	-- TODO插件
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			require("plugin.config.todo-comments")
		end,
	},
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	-- 快速跳转
	{
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			-- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
			require("plugin.config.hop")
		end,
	},
	-- 格式化代码
	{ "sbdchd/neoformat" },
	-- for run test
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-go",
			"antoinemadec/FixCursorHold.nvim",
		},
		config = function()
			require("plugin.config.neotest")
		end,
	},
	{
		"liuchengxu/vista.vim",
		config = function()
			require("plugin.config.vista-vim")
		end,
	},
	{ "ajmwagar/vim-deus" },

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("plugin.config.trouble")
		end,
	},
}
