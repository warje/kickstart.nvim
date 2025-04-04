vim.opt.number = false
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd('WinEnter', {
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = true
  end,
})

vim.api.nvim_create_autocmd('WinLeave', {
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = false
  end,
})

return {}
