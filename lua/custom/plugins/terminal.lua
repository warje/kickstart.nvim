return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require('toggleterm').setup{
      --direction = 'vertical' | 'horizontal' | 'tab' | 'float',
      hdden = true,
      hide_numbers = true,
      insert_mappings = false,
      open_mapping = '<leader>,',
      start_in_insert = true,
    }
  end,
}
