-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local number_group = vim.api.nvim_create_augroup("lazyvim_number_mode", { clear = true })

local format_group = vim.api.nvim_create_augroup("lazyvim_format_options", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = format_group,
  callback = function()
    vim.schedule(function()
      if vim.api.nvim_buf_is_valid(0) then
        vim.opt_local.formatoptions:remove({ "c", "r", "o" })
      end
    end)
  end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
  group = number_group,
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  group = number_group,
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = true
  end,
})
