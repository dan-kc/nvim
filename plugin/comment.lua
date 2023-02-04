-- Enable Comment.nvim
require('Comment').setup({
  toggler = {
    ---Line-comment toggle keymap
    line = '<leader>cc',
    ---Block-comment toggle keymap
    block = '<leader>cb',
  }
})
