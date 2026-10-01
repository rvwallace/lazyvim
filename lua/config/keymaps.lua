-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit insert mode" })

vim.keymap.set("x", "p", [=["_dP]=], { desc = "Paste without replacing yank" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

local function insert_comment_at_eol()
  local commentstring = vim.bo.commentstring
  local left, right = commentstring:match("^(.-)%%s(.-)$")
  left = left or "-- "
  right = right or ""
  if left:match("%S$") then
    left = left .. " "
  end

  local row = vim.api.nvim_win_get_cursor(0)[1]
  local line = vim.api.nvim_get_current_line()
  local spacer = line:match("%S$") and " " or ""
  local new_line = line .. spacer .. left .. right
  vim.api.nvim_set_current_line(new_line)
  vim.api.nvim_win_set_cursor(0, { row, #new_line - #right })
  vim.cmd("startinsert!")
end

vim.keymap.set("n", "gcA", insert_comment_at_eol, { desc = "Insert comment at end of line" })

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
