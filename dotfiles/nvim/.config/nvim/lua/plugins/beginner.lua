-- Beginner-friendly plugin customizations
-- This file contains settings to make LazyVim more approachable for Vim beginners

return {
  -- Better which-key help (shows you available keybindings)
  {
    "folke/which-key.nvim",
    opts = {
      -- Show help after 200ms instead of 1000ms (faster learning)
      delay = 200,
    },
  },

  -- Note: Colorscheme is configured in catppuccin.lua

  -- Better notifications
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
  },
}
