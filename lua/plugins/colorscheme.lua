return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "shin",
    },
  },
  {
    "myypo/borrowed.nvim",
    lazy = false,
    priority = 1000,

    version = "^0", -- Optional: avoid upgrading to breaking versions

    config = function()
      require("borrowed").setup({
        transparent = true,

        styles = {
          comments = "italic",
          functions = "italic",
          constants = "italic",
        },
      }) -- Optional: only has to be called to change settings

      -- If you are changing the config, colorscheme command has to be called after setup()
    end,
  },
}
