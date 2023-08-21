local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  -- b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- go
  b.formatting.goimports,
  b.formatting.gofumpt,
  -- php
  b.formatting.phpcsfixer.with {
    command = "vendor/bin/php-cs-fixer",
    condition = function(utils)
      return utils.root_has_file "vendor/bin/php-cs-fixer"
        or utils.root_has_file ".php_cs"
        or utils.root_has_file ".php_cs.dist"
        or utils.root_has_file ".php-cs-fixer.php"
        or utils.root_has_file ".php-cs-fixer.dist.php"
    end,
  },
}

null_ls.setup {
  -- debug = true,
  sources = sources,
}

local todo = require "todo-comments"
todo.setup()
