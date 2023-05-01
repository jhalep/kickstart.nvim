return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 
    'nvim-tree/nvim-web-devicons',
    'moll/vim-bbye',
  },
  config = function ()
    require('bufferline').setup {
      options = {
        numbers = "none",
        close_command = "Bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = false, --| "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        offsets = {{filetype = "neo-tree", text = "File Explorer", highlight = "Directory"}},
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thin",-- | "slant" | "slope" | "thick" | { 'any', 'any' },
        enforce_regular_tabs = false,
        always_show_bufferline = true,

        mode = "buffers", -- set to "tabs" to only show tabpages instead
        close_icon = '',
        truncate_names = true, -- whether or not tab names should be truncated
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
        color_icons = true, -- whether or not to add the filetype icon highlights
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
      }
    }
  end
}
