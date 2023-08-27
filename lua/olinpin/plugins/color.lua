return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function ()
      require("tokyonight").setup({
          style = "moon"
      })
      vim.cmd('colorscheme tokyonight')
      require('lualine').setup {
          options = {
              -- ... your lualine config
              theme = 'tokyonight'
              -- ... your lualine config
          }
      }
  end
}
