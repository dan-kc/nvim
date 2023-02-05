-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', ';f', require('telescope.builtin').find_files, { desc = 'Search files' })
vim.keymap.set('n', ';w', require('telescope.builtin').grep_string, { desc = 'Search current [W]ord' })
vim.keymap.set('n', ';g', require('telescope.builtin').live_grep, { desc = 'Search by grep' })
vim.keymap.set('n', ';d', require('telescope.builtin').diagnostics, { desc = 'Search diagnostics' })
vim.keymap.set('n', ';r', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', ';b', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
