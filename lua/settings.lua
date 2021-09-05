-- vim.o.hls = false
vim.o.errorbells = false
vim.o.syntax = 'on'
--vim.o.hidden = true --disable this so terminal buffer is closed
vim.o.fileencoding = "utf-8" -- The encoding written to file
--vim.o.mouse = "a" -- Enable your mouse
--vim.bo.expandtab = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir' -- set undo directory
vim.o.undofile = true-- set undofile
vim.o.incsearch = true
vim.o.showcmd = true --Show every key command
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = O.timeoutlen -- By default timeoutlen is 1000 ms
vim.cmd('filetype plugin on') -- filetype detection
vim.o.guifont = "FiraCode Nerd Font:h17" -- font FiraCode namba 1
vim.o.termguicolors = true -- termguicolors
vim.o.background = "dark" -- dark
vim.o.completeopt = 'menuone,noselect' --from nvim-compe
vim.cmd[[
if executable('/mnt/c/Windows/System32/clip.exe')
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif
    augroup END
endif
]]
vim.cmd[[autocmd FileType cpp nmap <F5> i/*<CR><Tab>Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>Author: Fadhil Musaad<CR><BS><BS>*/<ESC>:r ~/CP/template/template.cpp<CR>]]
vim.cmd[[autocmd FileType go nmap <F5> i/*<CR>* Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>* Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>* Author: Fadhil Musaad<CR>*/<CR><ESC>:r ~/CP/template/template.go<CR>]]
vim.cmd[[autocmd FileType go nmap <F6> i/*<CR>* Filename: <C-R>=expand('%:p:h:t')<CR>/<C-R>=expand('%:t')<CR><CR>* Timestamp: <C-R>=strftime("%d-%m-%Y %H:%M:%S")<CR><CR>* Author: Fadhil Musaad<CR>*/<CR><ESC>:r ~/CP/template/template_test.go<CR>]]
vim.cmd[[autocmd filetype python setlocal noet shiftwidth=2 softtabstop=2 smartindent tabstop=2]]
--vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]] --make transparent bg
