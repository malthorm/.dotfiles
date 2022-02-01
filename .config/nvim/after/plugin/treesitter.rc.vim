if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {'blade'},
  },
  indent = {
    enable = true,
    disable = {'blade'},
  },
  autotag = {
    enable = true,
    filetypes = { "html", "javascript", "javascriptreact", "vue", "blade", "xml" }
  },
  ensure_installed = {
    "php",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "python",
    "lua",
    "javascript",
    "bash",
    "regex"
  },
}

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
