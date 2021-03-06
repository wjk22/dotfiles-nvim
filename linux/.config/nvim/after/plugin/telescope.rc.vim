if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> <leader>fg  <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> <leader>fb :Telescope file_browser<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}

require("telescope").load_extension "file_browser"

EOF


