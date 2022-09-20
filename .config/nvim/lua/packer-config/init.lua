return require('packer').startup(function()
    
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
  },
}
   
    use 'akinsho/toggleterm.nvim'

    use 'nvim-lualine/lualine.nvim'

    use 'rcarriga/nvim-notify'

    use { 'akinsho/bufferline.nvim', tag = "v2.*" }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} 
    }
}
    -- LSP    
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
}
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim'
 
end)

