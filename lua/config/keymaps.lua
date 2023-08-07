-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- netrw
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "netrw" })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add to Harpoon" })
vim.keymap.set("n", "<leader>pe", ui.toggle_quick_menu, { desc = "Harpoon" })

-- navigation
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
--vim.keymap.set("i", "lll", "<Esc>")
--vim.keymap.set("i", "hh", "<Esc>")

-- undo tree
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle, { desc = "Undo Tree" })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git Files" })

-- quick yank
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yoink to System Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+p', { desc = "Put from System Clipboard" })

-- copilot
local copilot_on = true
vim.api.nvim_create_user_command("CopilotToggle", function()
  if copilot_on then
    vim.cmd("Copilot disable")
    print("Copilot OFF")
  else
    vim.cmd("Copilot enable")
    print("[Copilot] Online")
  end
  copilot_on = not copilot_on
end, { nargs = 0 })
vim.keymap.set("n", "<leader>ct", ":CopilotToggle<CR>", { desc = "Copilot Toggle" })


