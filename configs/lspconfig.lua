local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  --"clangd",
  "cmake",
  "rust_analyzer",
  "ltex",
  "ocamllsp",
  "pyright",
  "marksman",
  "taplo",
  "wgsl_analyzer",
  "lua_ls",
  "glslls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16", -- To match null-ls
    --  With this, you can configure server with
    --    - .clangd files
    --    - global clangd/config.yaml files
    --  Read the `--enable-config` option in `clangd --help` for more information
    "--enable-config",
  },
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
