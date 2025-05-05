return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { 
                    "lua",
                    "typescript", "tsx", "javascript", "svelte", "html",
                    "go", "c_sharp"
                },

                auto_install = true,

                highlight = {
                    enable = true,
                }
            })
        end
    }
}
