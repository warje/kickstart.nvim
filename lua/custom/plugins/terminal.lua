-- return {
--   'akinsho/toggleterm.nvim',
--   version = "*",
--   config = function ()
--     require('toggleterm').setup{
--       --direction = 'vertical' | 'horizontal' | 'tab' | 'float',
--       hdden = true,
--       hide_numbers = true,
--       insert_mappings = false,
--       open_mapping = '<leader>,',
--       start_in_insert = true,
--     }
--   end,
-- }
--
--
return {
  'rebelot/terminal.nvim',
  config = function()
    require('terminal').setup {
      autoclose = true,
    }

    local term_map = require 'terminal.mappings'
    vim.keymap.set('n', '<leader>to', term_map.toggle)
    -- vim.keymap.set('n', '<leader>tO', term_map.toggle { open_cmd = 'enew' })
    -- vim.keymap.set({ 'n', 'x' }, '<leader>ts', term_map.operator_send, { expr = true })
    -- vim.keymap.set('n', '<leader>tr', term_map.run)
    -- vim.keymap.set('n', '<leader>tR', term_map.run(nil, { layout = { open_cmd = 'enew' } }))
    vim.keymap.set('n', '<leader>tk', term_map.kill)
    vim.keymap.set('n', '<leader>t]', term_map.cycle_next)
    vim.keymap.set('n', '<leader>t[', term_map.cycle_prev)
    vim.keymap.set('n', '<leader>tl', term_map.move { open_cmd = 'belowright vnew' })
    vim.keymap.set('n', '<leader>tL', term_map.move { open_cmd = 'botright vnew' })
    vim.keymap.set('n', '<leader>th', term_map.move { open_cmd = 'belowright new' })
    vim.keymap.set('n', '<leader>tH', term_map.move { open_cmd = 'botright new' })
    vim.keymap.set('n', '<leader>tf', term_map.move { open_cmd = 'float' })

    local claude = require('terminal').terminal:new {
      layout = { open_cmd = 'belowright vnew' },
      cmd = { 'claude' },
      autoclose = true,
    }
    vim.api.nvim_create_user_command('Claude', function(args)
      claude.cwd = args.args and vim.fn.expand(args.args)
      claude:toggle(nil, true)
    end, {})

    vim.keymap.set('n', '<leader>tc', '<cmd>Claude<CR>', { silent = true })
  end,
}
