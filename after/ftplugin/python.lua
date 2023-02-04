--plot with the ability to return to code
vim.cmd([[nnoremap <leader>p :w <cr>: !python3 % & <cr>]])

--print statements return nicely. can't return to code though
vim.cmd([[nnoremap <leader>t :w <cr>: !python3 %<cr>]])

