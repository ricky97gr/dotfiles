local function load_onedark()
	vim.cmd([[colorscheme onedark]])
end
local function load_deus()
	vim.cmd([[colorscheme deus]])
end
local theme_config = {}
theme_config[0] = load_onedark
theme_config[1] = load_deus

local function random_theme()
	math.randomseed(os.time())
	local theme = math.random(0, 1)
	theme_config[theme]()
end

random_theme()
