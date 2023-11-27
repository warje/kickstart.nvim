return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require('toggleterm').setup{
      hidden = true,
      hide_numbers = true,
      open_mapping = '<leader>t',
      start_in_insert = true,
    }
  end,
}
