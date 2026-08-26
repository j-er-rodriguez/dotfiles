" appearance
set number
set relativenumber
set syntax
colorscheme catppuccin
set cursorline
set cursorcolumn
let g:netrw_liststyle = 3
set visualbell
set ttyfast


" editing
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4


" search
set ignorecase
set smartcase

" cursor
set scrolloff=8
set backspace=indent,eol,start


" keymaps
let mapleader = " "
nnoremap <leader>e :Lexplore 30<CR>
nnoremap <leader>c :bdelete<CR>

nnoremap H :bprevious<CR>
nnoremap L :bnext<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


" custom tabline: show buffers instead of tabs
set showtabline=2
function! BuflineList()
  let s = ''
  for bufnum in range(1, bufnr('$'))
    if buflisted(bufnum)
      let name = bufname(bufnum)
      let name = name == '' ? '[No Name]' : fnamemodify(name, ':t')
      let current = bufnum == bufnr('%') ? '%#TabLineSel#' : '%#TabLine#'
      let s .= current . ' ' . bufnum . ':' . name . ' '
    endif
  endfor
  let s .= '%#TabLineFill#'
  return s
endfunction

set tabline=%!BuflineList()
