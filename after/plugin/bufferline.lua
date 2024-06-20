vim.api.nvim_set_keymap('n', '[b', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ']b', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})

-- Keymapping to close current buffer
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true })

