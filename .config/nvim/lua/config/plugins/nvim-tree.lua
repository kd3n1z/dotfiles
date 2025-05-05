return {
    {
        "nvim-tree/nvim-tree.lua",
        enabled = false,
        keys = {
            {
                "<F1>",
                ":NvimTreeToggle<CR>",
                desc = "Toggle NvimTree",
                mode = "n",
                noremap = true,
                silent = true,
            },
        },
        config = function ()
            require('nvim-tree').setup({
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 40,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = false,
                },
            })
        end
    }
}
