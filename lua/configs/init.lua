require("configs.settings")
require("configs.keymaps")
require("bufferline").setup{}
require("autoclose").setup({
    keys = {
        ["("] = { close = true, escape = false, pair = "()" },
        [")"] = { close = false, escape = false, pair = "()" },
        ["["] = { close = true, escape = false, pair = "[]" },
        ["]"] = { close = false, escape = false, pair = "[]" },
        ["{"] = { close = true, escape = false, pair = "{}" },
        ["}"] = { close = false, escape = false, pair = "{}" },
        ['"'] = { close = true, escape = false, pair = '""' },
        ["'"] = { close = true, escape = false, pair = "''" },
        ["`"] = { close = true, escape = false, pair = "``" },
    },
    options = {
        disable_when_touch = true,  -- Disables auto-close when cursor touches matching character
    },
})

-- init.lua
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    icons = {
      os = '', -- Apple icon for macOS
      -- other icons can be set here
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require("nvim-web-devicons").setup( {
    -- your personal options here
    default = true;
})

