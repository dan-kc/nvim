-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


  -- {action}    (string) mandatory name of the action.
  --             `""` to remove an action with {key}. The case of {key} must
  --             exactly match the action you are removing e.g. `'<Tab>'` to
  --             remove the default preview action.
  --             An arbitrary description when using `action_cb`.
  --
  -- {action_cb} (function) optional custom function that will be called.
  --             Receives the node as a parameter.
  --             Non-empty description for `action` is required.
  --
  -- {mode}      (string) optional mode as per |nvim_set_keymap|.
--
--
-- `<CR>`            edit                open a file or folder; root will cd to the above directory
-- `o`
-- `<2-LeftMouse>`
-- `<C-e>`           edit_in_place       edit the file in place, effectively replacing the tree explorer
-- `O`               edit_no_picker      same as (edit) with no window picker
-- `<C-]>`           cd                  cd in the directory under the cursor
-- `<2-RightMouse>`
-- `<C-v>`           vsplit              open the file in a vertical split
-- `<C-x>`           split               open the file in a horizontal split
-- `<C-t>`           tabnew              open the file in a new tab
-- `<`               prev_sibling        navigate to the previous sibling of current file/directory
-- `>`               next_sibling        navigate to the next sibling of current file/directory
-- `P`               parent_node         move cursor to the parent directory
-- `<BS>`            close_node          close current opened directory or parent
-- `<Tab>`           preview             open the file as a preview (keeps the cursor in the tree)


-- Setup nvim-tree
require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "v", action = "vsplit" },
        { key = "n", action = "cd" },
        { key = "<C-]>", action = "" },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
