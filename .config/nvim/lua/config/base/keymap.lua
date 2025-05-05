local telescope_builtin = require('telescope.builtin')

-- lsp
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<F12>", telescope_builtin.lsp_references)
vim.keymap.set("n", "<D-.>", vim.lsp.buf.code_action)
vim.keymap.set("n", "<MS-f>", vim.lsp.buf.format)

-- files
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<F1>', function () telescope.find_files({ hidden = true }) end)
