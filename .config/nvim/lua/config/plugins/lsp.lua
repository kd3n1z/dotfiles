return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp = require("lspconfig")
            local util = require("lspconfig.util")

            vim.lsp.enable({
                'lua_ls',
                'ts_ls',
                'svelte',
                'tailwindcss',
                'rust_analyzer',
                'pyright',
                'gdscript',
                'jsonls'
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

            local pio_root_pattern = util.root_pattern("platformio.ini")

            lsp.ccls.setup({
                root_dir = pio_root_pattern,
            })

            lsp.sourcekit.setup({
                root_dir = function(fname)
                    if pio_root_pattern(fname) then
                        return nil
                    end
                    return util.root_pattern(
                        "buildServer.json",
                        "*.xcodeproj",
                        "*.xcworkspace",
                        ".git",
                        "compile_commands.json",
                        "Package.swift"
                    )(fname)
                end,
            })

            vim.filetype.add({
                extension = {
                    drift = "drift",
                },
            })

            require('lspconfig.configs').driftls = {
                default_config = {
                    cmd = { "driftls" },
                    filetypes = { "drift" },
                    root_dir = lsp.util.root_pattern(".git"),
                },
            }

            lsp.driftls.setup({})
        end
    }
}
