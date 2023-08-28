local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
    "glsl",
  },
  highlight = { enable = true },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- LSP
    "clangd",
    "cmake-language-server",
    "rust-analyzer",
    "ltex-ls",
    "ocaml-lsp",
    "python-lsp-server",
    "marksman",
    "taplo",
    "wgsl-analyzer",
    "glsl-ls",
    "lua-language-server",

    -- Formatter/Linter
    "clang-format",
    "cmakelint",
    "cmakelang",
    "ruff",
    "ocamlformat",
    "black",
    "stylua",
  },
}

M.nvimtree = {
  renderer = {
    symlink_destination = false,
  },
  filters = {
    git_ignored = false,
    dotfiles = true,
    git_clean = false,
    no_buffer = false,
    custom = {},
    exclude = { ".build", ".gitignore", ".clang-format" },
  },
  git = {
    enable = false,
  },
}

M.telescope = {
  defaults = {
    file_ignore_patterns = {
      ".build/*",
      "glfw/*",
      "lib/*/",
    },
    mappings = {
      i = {
        ["<esc>"] = "close",
      },
    },
  },
}

M.lualine = {
  options = {
    theme = "onedark",
    component_separators = { left = "|", right = "|" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = { "filename", "require'runner'.get_status()" },
    lualine_x = {
      "require'lsp-status'.status()",
      "encoding",
      { "filetype", filetype_name = { TelescopePrompt = "Telescope" } },
    },
    lualine_y = {},
    lualine_z = { "location" },
  },
  extensions = { "nvim-tree", "nvim-dap-ui", "toggleterm" },
}

return M
