return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    -- stylua:
    keys = function()
      vim.keymap.set(
        "n",
        "<leader>fp",
        [[<cmd>lua require('telescope.builtin').find_files({ cwd = require("lazy.core.config").options.root })<CR>]],
        { desc = "Find Plugin File" }
      )
    end,
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
