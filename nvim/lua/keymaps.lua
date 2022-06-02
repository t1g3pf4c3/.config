local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Tabs
map("n","te",":tabedit<Return>", default_opts)
-- map("n", "T", ":Texplore<Return>", default_opts)
map("n", "T", ":NvimTreeToggle<Return>", default_opts)

-- Splits
map("n","-",":split<Return>", default_opts)
map("n","_",":vsplit<Return>", default_opts)
map("n", "<S-a>", "gg<S-v>G", default_opts)
map("n", "<C-z>", ":q!<Return>", default_opts)
map("n", "<C-s>", ":w<Return>", default_opts)
--- Move lines
map("n", "<A-j>", ":m +1 <Return>", default_opts)
map("n", "<A-k>", ":m -2 <Return>", default_opts)
	
map("n", "gR", ":Telescope lsp_references<Return>", default_opts)

map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', default_opts)

map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', default_opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', default_opts)
-- map('n', 'NN', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.format {async = true}<CR>', default_opts)
-- map('i', '<C-o>', '<Alt>', default_opts)
-- Telescope
map('n', 'FF', ':Telescope find_files<Return>', default_opts)
map('n', 'FB', ':Telescope buffers<Return>', default_opts)
map('n', '<C-w>x', 'q<Return>', default_opts)


map('n', 'gt', ':BufferLineCycleNext<CR>', default_opts)
map('n', 'gT', ':BufferLineCyclePrev<CR>', default_opts)

map('n', '<C-Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

map('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
