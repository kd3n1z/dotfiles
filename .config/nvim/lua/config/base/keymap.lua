local telescope = require('telescope.builtin')

-- lsp
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<F12>", telescope.lsp_references)
vim.keymap.set("n", "<A-.>", vim.lsp.buf.code_action)
vim.keymap.set("n", "<MS-f>", vim.lsp.buf.format)

-- files
vim.keymap.set('n', '<F1>', function() telescope.find_files({ hidden = true }) end)
