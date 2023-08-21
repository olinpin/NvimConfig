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
    "markdown",
    "markdown_inline",
    "go",
    "json",
    "toml",
    "cpp",
    "dockerfile",
    "bash",
    "java",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "php",
    -- },
  },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- java stuff
    "jdtls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  filters = {
    dotfiles = true,
    exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
  },
}

return M
