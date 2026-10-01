-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function yank_current_file(format, label)
  local name = vim.api.nvim_buf_get_name(0)
  if name == "" then
    vim.notify("The current buffer has no file name", vim.log.levels.WARN)
    return
  end

  local value = vim.fn.fnamemodify(name, format)
  vim.fn.setreg("+", value)
  vim.notify(string.format("Yanked %s: %s", label, value))
end

vim.keymap.set("n", "<leader>yf", function()
  yank_current_file(":t", "file name")
end, { desc = "Yank current file name" })

vim.keymap.set("n", "<leader>yp", function()
  yank_current_file(":p", "absolute path")
end, { desc = "Yank absolute file path" })

vim.keymap.set("n", "<leader>yr", function()
  yank_current_file(":.", "relative path")
end, { desc = "Yank relative file path" })
