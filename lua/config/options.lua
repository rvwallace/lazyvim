-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.foldlevelstart = 99
vim.opt.wildignorecase = true
vim.opt.inccommand = "split"
vim.opt.formatoptions:remove({ "c", "r", "o" })
vim.opt.diffopt:remove("linematch:40")
vim.opt.diffopt:append({ "algorithm:patience", "linematch:60" })
