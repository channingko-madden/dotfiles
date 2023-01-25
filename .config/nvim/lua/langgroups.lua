-- [[ Configure language specific stuff
-- ]]

-- C++
--
-- The below requires neovim 0.7.0!
-- [[
-- --Callback function for cpp augroup FileType auto command
-- function fileTypeCallback()
--    vim.api.nvim_command([[
--    set comments=sl:/*,mb:\ *,elx:\ */
--    set nofoldenable
--    ]])
-- end
-- local cppgrp = vim.api.nvim_create_augroup("cpp_stuff")
-- vim.api.nvim_create_autocmd({"BufNewFile", "BufReadPost"}, {
--     pattern = {"*.ino","*.pde","*.c","*.xbm"},
--     command = "set filetype=cpp",
--     group = cppgrp,
--     }
--  )
-- vim.api.nvim_create_autocmd("FileType", {
--      pattern = "cpp",
--      --command = "set comments=sl:/*,mb:\ *,elx:\ */",
--      callback = fileTypeCallback,
--      group = cppgrp,
--      }
--  )
-- vim.api.nvim_create_autocmd("FileType", {
-- pattern = "cpp",
-- --command = "set nofoldenable",
-- callback = fileTypeCallback,
-- group = cppgrp,
-- }
-- )
-- ]]

-- this doesn't appear to be working
vim.api.nvim_command([[
augroup CppStuff
autocmd BufNewFile,BufReadPost *.cpp,*.h,*.ino,*.pde,*.c,*.xbm set filetype=cpp
autocmd FileType cpp set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType cpp set colorcolumn=120
autocmd FileType cpp set showmatch
autocmd FileType cpp highlight ColorColumn
autocmd FileType cpp set comments=sl:/*,mb:\ *,elx:\ */
autocmd FileType cpp set nofoldenable "disable folding
augroup END
]])

-- Python
vim.api.nvim_command([[
augroup python_stuff
	autocmd FileType python set expandtab tabstop=4 shiftwidth=4 softtabstop=4
	autocmd FileType python set foldmethod=indent
augroup END
]])
