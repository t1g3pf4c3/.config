Default_keyopts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

-- Tabs
map("n","te",":tabedit<Return>", Default_keyopts)
map("x","-",'!while read i; do echo "- $i"; done <CR>', {noremap = true, silent = false})
map("x","1", "!nl -s'. ' -w 1 <CR>", {noremap = true, silent = false})
-- map("n", "T", ":Texplore<Return>", Default_keyopts)
-- map("n", "T", ":NvimTreeToggle<Return>", Default_keyopts)


-- Splits
map("n","-",":split<Return>", Default_keyopts)
map("n","_",":vsplit<Return>", Default_keyopts)
map("n", "<S-a>", "gg<S-v>G", Default_keyopts)
map("n", "<C-z>", ":q!<Return>", Default_keyopts)
map("n", "<C-s>", ":w<Return>", Default_keyopts)
--- Move lines
map("n", "<A-j>", ":m +1 <Return>", Default_keyopts)
map("n", "<A-k>", ":m -2 <Return>", Default_keyopts)
--- Switch buffers
map("n", "gn", ":bn<Return>", Default_keyopts)
map("n", "gp", ":bp<Return>", Default_keyopts)
map("n", "gd", ":bd<CR>", Default_keyopts)

for i = 1,9 do
  map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

map('n', ',', ':.!', {noremap = true, silent = false}
)
-- map("n", "gR", ":Telescope lsp_references<Return>", Default_keyopts)

-- map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', Default_keyopts)

-- map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', Default_keyopts)
-- map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', Default_keyopts)
-- map('n', 'NN', '<cmd>lua vim.lsp.buf.implementation()<CR>', Default_keyopts)
-- map('n', '<space>f', '<cmd>lua vim.lsp.buf.format {async = true}<CR>', Default_keyopts)
-- map('i', '<C-o>', '<Alt>', Default_keyopts)
-- Telescope
-- map('n', 'FF', ':Telescope find_files<Return>', Default_keyopts)
-- map('n', 'FB', ':Telescope buffers<Return>', Default_keyopts)
-- map('n', '<C-w>x', 'q<Return>', Default_keyopts)


-- map('n', 'gt', ':BufferLineCycleNext<CR>', Default_keyopts)
-- map('n', 'gT', ':BufferLineCyclePrev<CR>', Default_keyopts)
-- 
-- map('n', '<C-Tab>', ':BufferLineCycleNext<CR>', Default_keyopts)
-- map('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', Default_keyopts)
-- 
-- map('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', Default_keyopts)



