local M = {}

M.ui = {
  theme = "onedark",
  extended_integratino = { "dap", "bufferline" },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    overriden_modules = function(modules)
      modules = {}
    end,
  },
  tabufline = {
    enabled = false,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
