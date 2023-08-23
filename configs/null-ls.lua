local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  b.formatting.clang_format,
  b.formatting.stylua,
  b.diagnostics.ruff,
  --b.diagnostics.cmakelint,
  b.formatting.ocamlformat,
  b.formatting.black,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
