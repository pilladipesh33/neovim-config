return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darkvoid",
    },
  },
  -- {
  --   "samharju/serene.nvim",
  --   -- for using as main:
  --   --config = function() vim.cmd.colorscheme("serene") end,
  -- },
  {
    "aliqyan-21/darkvoid.nvim",
    -- require("darkvoid").setup({
    --   transparent = true, -- set true for transparent
    --   glow = true, -- set true for glow effect
    --   show_end_of_buffer = true, -- set false for not showing end of buffer
    -- }),
    opts = {
      transparent = true,
      glow = true,
    },
  },
}
