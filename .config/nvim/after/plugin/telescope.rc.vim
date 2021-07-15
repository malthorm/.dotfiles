if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> öf <cmd>Telescope find_files<cr>
nnoremap <silent> ör <cmd>Telescope live_grep<cr>
nnoremap <silent> -- <cmd>Telescope buffers<cr>
nnoremap <silent> öö <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
