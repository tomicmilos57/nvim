---@diagnostic disable
vim.keymap.set('n', 'i', function ()
  return string.match(vim.api.nvim_get_current_line(), '%g') == nil
         and 'cc' or 'i'
end, {expr=true, noremap=true})
local keymap = vim.keymap.set
---@diagnostic enable

keymap('n', '<C-q>', ':wa!<CR>:qa!<CR>', {})

keymap('n', '<C-s>', ':wa!<CR>', {})

keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {})

keymap('n', '<C-Left>', '<C-w>h', {})
keymap('n', '<C-Right>', '<C-w>l', {})
keymap('n', '<C-Down>', '<C-w>j', {})
keymap('n', '<C-Up>', '<C-w>k', {})

keymap('n', '<C-TAB>', ':bnext<CR>')

keymap('n', '<F5>', ':wa!<CR>:TermExec cmd=\"make run; exit\"<CR><Esc><C-w>ji', {})
keymap('n', '<F6>', ':wa!<CR>:TermExec cmd=\"cargo run; exit\"<CR><Esc><C-w>ji', {})

keymap('v', '<A-Up>', ':m \'<-2<CR>gv=gv')
keymap('v', '<A-Down>', ':m \'>+1<CR>gv=gv')

keymap("n", "<C-r>", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]])
---- Auto indent on empty line.
