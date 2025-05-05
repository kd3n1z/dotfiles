return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require("lualine").setup({
                options = {
                    theme = 'auto',
                    --disabled_filetypes = { 'NvimTree' }
                },
                extensions = { 'nvim-tree' },
            })

            vim.opt.showmode = false
        end
    }
}
