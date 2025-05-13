return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp = require("lspconfig")

            vim.lsp.enable({
                'lua_ls',
                'ts_ls',
                'svelte',
                'tailwindcss',
                'rust_analyzer',
            })

            lsp.gopls.setup({
                cmd = { vim.fn.expand("~/go/bin/gopls") }
            })

            lsp.omnisharp.setup({
                cmd = {
                    vim.fn.stdpath("config") .. "/language-servers/omnisharp/OmniSharp",
                },
                settings = {
                    FormattingOptions = {
                        EnableEditorConfigSupport = false,

                        NewLinesForBracesInTypes = false,
                        NewLinesForBracesInMethods = false,
                        NewLinesForBracesInProperties = false,
                        NewLinesForBracesInAccessors = false,
                        NewLinesForBracesInAnonymousMethods = false,
                        NewLinesForBracesInControlBlocks = false,
                        NewLinesForBracesInAnonymousTypes = false,
                        NewLinesForBracesInObjectCollectionArrayInitializers = false,
                        NewLinesForBracesInLambdaExpressionBody = false,
                    },
                }
            })
        end
    }
}
