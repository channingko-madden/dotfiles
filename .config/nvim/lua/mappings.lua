-- [[Function that replicates vim map command
-- mode - "" equates to all modes (like :map)
-- ]]
function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true})
end

-- Function that replicates vim nmap
function nmap(shortcut, command)
    map("n", shortcut, command)
end

-- Function that replicates vim vmap
function vmap(shortcut, command)
    map("v", shortcut, command)
end

-- Function that replicates vim imap
function imap(shortcut, command)
    map("i", shortcut, command)
end

vim.g.mapleader = ".."

-- tag list
map("", ":<leader>t", ":TagbarToggle<CR>") 

-- copy, cut and paste
vmap("<C-c>", "\"+y")
vmap("<C-x>", "\"+c")
vmap("<C-v>", "c<ESC>\"+p")
imap("<C-v>", "<ESC>\"+pa")

-- move through split windows
nmap("<leader><Up>", ":wincmd k<CR>")
nmap("<leader><Down>", ":wincmd j<CR>")
nmap("<leader><Left>", ":wincmd h<CR>")
nmap("<leader><Right>", ":wincmd l<CR>")

-- move through buffers
nmap("<leader>[", ":bp!<CR>")
nmap("<leader>]", ":bn!<CR>")
nmap("<leader>x", ":bd<CR>")

-- gfiles shortcut
nmap("<C-f>", "<cmd>Telescope find_files<cr>")
nmap("<C-f>", "<cmd>Telescope git_files<cr>")

-- NERDTree shortcut
nmap("<leader>ne", ":NERDTree<cr>")
