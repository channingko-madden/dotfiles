-- [[ Configure language specific stuff
-- The below requires neovim 0.7.0!
-- ]]

-- Generic IDE stuff
-- --Callback function for FileType auto command
local function fileTypeCallback()
    vim.api.nvim_set_option_value("colorcolumn", "120", {})
    vim.api.nvim_command([[
    set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    set autoindent
    set smartindent
    set tw=119
    set showmatch
    highlight ColorColumn cterm=reverse ctermbg=7 guibg=LightBlue
    set comments=sl:/*,mb:\ *,elx:\ */
    set nofoldenable
   ]])
end

local idegrp = vim.api.nvim_create_augroup("ide_stuff", { clear = true})

vim.api.nvim_create_autocmd({"BufNewFile", "BufReadPost"}, {
    pattern = {"*.ino","*.pde","*.c","*.xbm", "*.cc"},
    command = "set filetype=cpp",
    group = idegrp,
    }
)
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"cpp", "python" },
    callback = fileTypeCallback,
    group = idegrp,
    }
)

-- C++
--
