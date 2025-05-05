return {
    {
        "Mofiqul/vscode.nvim",
        config = function()
            --require('vscode').setup({
            --    transparent = true
            --})

            vim.cmd.colorscheme("vscode")

            local bg = "none"

            vim.api.nvim_set_hl(0, "Normal", { bg = bg })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
            vim.api.nvim_set_hl(0, "LineNr", { bg = bg, fg = "grey" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "grey30" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
            vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg })
        end
    }
}
