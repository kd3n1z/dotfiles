return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        'nvim-tree/nvim-web-devicons',
        --'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function ()
        local telescope = require('telescope')
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<Esc>"] = actions.close
                    }
                },
                file_ignore_patterns = {
                    ".git/"
                }
            }
        })

        telescope.load_extension('ui-select')
        telescope.load_extension('fzf')
        --telescope.load_extension('file_browser')
    end
}
