
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'jpalardy/vim-slime'
call plug#end()

" map leader to space
noremap <space> <nop>
let mapleader = " "

" slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.1"}
let g:slime_dont_ask_default = 1
let g:lime_no_mappings = 1
let g:slime_cell_delimiter = "---"
let g:slime_python_ipython = 1
vmap <leader>d <plug>SlimeRegionSend '> <down>
nmap <leader>d <plug>SlimeLineSend <down>
nmap <leader>b  <plug>SlimeParagraphSend )
nmap <leader>v  <plug>SlimeConfig
nmap <leader>c  <plug>SlimeSendCell

