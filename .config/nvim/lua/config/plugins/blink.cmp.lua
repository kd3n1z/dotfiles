return {
    {
        'saghen/blink.cmp',
        version = '1.*',
        opts = {
            keymap = {
                preset = 'default',
                ['<Enter>'] = {'accept', 'fallback'},
            },
            appearance = {
                nerd_font_variant = 'mono'
            },
            fuzzy = { implementation = "lua" },
            completion = {
                documentation = {
                    auto_show = true,
                }
            }
        },
    }
}
