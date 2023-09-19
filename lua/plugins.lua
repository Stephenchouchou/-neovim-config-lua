local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- nvim-tree
	use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons", commit = '9c97e6449b0b0269bd44e1fd4857184dfa57bb4c'})
	--Colorschemes
	use 'EdenEast/nightfox.nvim'
	-- bufferline
	use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
	-- lualine
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
	use("arkav/lualine-lsp-progress")
	use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
	--treesister 語法高亮
	use({ "nvim-treesitter/nvim-treesitter" })
	-----------------LSP---------------------------
	use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "neovim/nvim-lspconfig",
	}
	-- git
	use({ "lewis6991/gitsigns.nvim"})
	-- 代碼補全
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
	-- UI圖標顯示
	require("lsp.ui")
	-- line
    use("lukas-reineke/indent-blankline.nvim")
    -- Terminal	
	use {"akinsho/toggleterm.nvim"}
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
