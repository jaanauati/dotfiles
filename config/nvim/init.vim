call plug#begin()
Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive' 
Plug 'shumphrey/fugitive-gitlab.vim'

Plug 'easymotion/vim-easymotion'
Plug 'NeogitOrg/neogit'
Plug 'liuchengxu/vim-which-key'
" Plug 'nvim-neorg/neorg'
Plug 'stevearc/oil.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'mhinz/vim-startify'
" Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim', {'branch': 'main'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'mhartington/oceanic-next'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'xiyaowong/transparent.nvim', { 'branch': 'main' }

Plug 'kana/vim-textobj-user'
Plug 'bps/vim-textobj-python'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'michaeljsmith/vim-indent-object' "ai ii
Plug 'vim-scripts/argtextobj.vim' "ia aa

Plug 'MattesGroeger/vim-bookmarks'
" Plug 'tom-anders/telescope-vim-bookmarks.nvim'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
Plug 'navarasu/onedark.nvim'
call plug#end()

" Required:
filetype plugin indent on
set nu
set nowrap
set formatoptions-=t
map <Leader> <Plug>(easymotion-prefix)

" colorscheme slate
colorscheme onedark
set shiftwidth=2
set softtabstop=2
" system clipboard default.
set clipboard=unnamedplus
set colorcolumn=79,100,120
highlight ColorColumn guibg=Black
set mouse=a

source /Users/jonatan/.config/nvim/macmap.vim
vnoremap > >gv
vnoremap < <gv
nnoremap <special> <D-p> :lua require'telescope.builtin'.git_files{}<CR>
" map <Space><Space> <Plug>(easymotion-overwin-f)
map <Space><Space> :Telescope git_files<CR>
nnoremap <special> <S-D-p> :Telescope commands<CR>
inoremap <special> <S-D-p> <Esc>:Telescope commands<CR>
nnoremap <special> <D-g> <Plug>(easymotion-overwin-f)
inoremap <special> <D-g> <Esc><Plug>(easymotion-overwin-f)
" command + double click to open/close folds under cursor
noremap <special> <D-2-LeftMouse> zA
" double click to open/close fold
noremap <2-LeftMouse> za

set termguicolors
colorscheme OceanicNext

" augroup black_on_save
"   autocmd!
"   autocmd BufWritePre *.py Black
" augroup end

" Coc.
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"
" show current file name in status line
set statusline+=%F
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set foldmethod=indent

let startify_lists = [
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]
" \ { 'type': 'files',     'header': ['   MRU']            },
" \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },

let g:mapleader = "\<Space>"
let g:maplocaleader = ','

" nnoremap <Leader>n :Neogit<cr>
" nnoremap <Leader>f :Telescope git_files<cr>
" map <Leader>e <Plug>(easymotion-prefix)
set wildignore+=node_modules/**,**/node_modules/**

function SearchVimgrep()
    call inputsave()
    let text = input("Enter text to search: ")
    exec ":vimgrep ".text." **"
    call inputrestore()
endfunction

function SearchCoc()
    call inputsave()
    let text = input("Enter text to search: ")
    exec ":CocSearch ".text
    call inputrestore()
endfunction

function SearchSymbolCoc()
    call inputsave()
    let text = input("Enter symbol: ")
    exec ":CocList symbols ".text
    call inputrestore()
endfunction

let g:which_key_map = {}

let g:which_key_map['s']={
      \ 'name' : 'Search',
      \ 's' : [':call SearchVimgrep()','Search using vimgrep'],
      \ 'c' : [':call SearchCoc()','Search using coc'],
      \ 'y' : [':call SearchSymbolCoc()','Search symbol using coc'],
      \ 'p' : [':Telescope git_files', 'Open file using Telescope'],
      \ 'd' : [':Telescope git_files', 'Open file using Telescope']
      \ }

let g:which_key_map['p']={
      \ 'name' : 'Commands',
      \ 'p' : [':Telescope commands', 'Command finder'],
      \ }

let g:which_key_map['b']={
      \ 'name' : 'Bookmarks',
      \ 'a' : [':BookmarkAnnotate','Add bookmark with annotation'],
      \ 't' : [':BookmarkToggle','Toggle bookmark'],
      \ 'l' : [':Telescope vim_bookmarks', 'List bookmarks'],
      \ }

command! CopyFullPath let @+ = expand('%:p')
let g:which_key_map['e']={
      \ 'name' : 'Easymotion',
      \ 'f' : ['<Plug>(easymotion-overwin-f)', 'Move over windows'],
      \ }

let g:which_key_map['g']={
      \ 'name' : '+Git',
      \ 'g' : ['Neogit', 'Neogit'],
      \ 'r' : ['GBrowse', 'Open Remote'],
      \ 'n' : ['GitGutterNextHunk', 'Next Hunk'],
      \ 'p' : ['GitGutterPrevHunk', 'Prev  Hunk'],
      \ }

let g:which_key_map['f']={
      \ 'name' : '+File Explorer',
      \ 'e' : ['Oil', 'Open Current Directory'],
      \ 'o' : ['NvimTreeOpen', 'Open Explorer'],
      \ 'c' : ['NvimTreeClose', 'Close Explorer'],
      \ 'r' : ['NvimTreeFindFile', 'Reveal File in Explorer'],
      \ 't' : ['NvimTreeFindFileToggle', 'Reveal File in Explorer'],
      \ 'p' : ['CopyFullPath', 'Copy File Path'],
      \ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>v'     , 'split-window-below'],
      \ 'd' : ['<C-W>c'     , 'delete-window'],
      \ '-' : ['<C-W>s'     , 'split-window-below'],
      \ '|' : ['<C-W>v'     , 'split-window-right'],
      \ '2' : ['<C-W>v'     , 'layout-double-columns'],
      \ 'h' : ['<C-W>h'     , 'window-left'],
      \ 'j' : ['<C-W>j'     , 'window-below'],
      \ 'l' : ['<C-W>l'     , 'window-right'],
      \ 'k' : ['<C-W>k'     , 'window-up'],
      \ 'H' : ['<C-W>5<'    , 'expand-window-left'],
      \ 'J' : [':resize +5'  , 'expand-window-below'],
      \ 'L' : ['<C-W>5>'    , 'expand-window-right'],
      \ 'K' : [':resize -5'  , 'expand-window-up'],
      \ '=' : ['<C-W>='     , 'balance-window'],
      \ 's' : ['<C-W>s'     , 'split-window-below'],
      \ 'v' : ['<C-W>v'     , 'split-window-below'],
      \ '?' : ['Windows'    , 'fzf-window'],
      \ }

let g:which_key_map['z']={
      \ 'name' : 'Fold',
      \ 'R' : ['zR', 'Open all folds'],
      \ 'M' : ['zM', 'Close all folds'],
      \ 'O' : ['zO', 'Open all folds under cursor'],
      \ 'C' : ['zC', 'Close all folds under cursor'],
      \ 'o' : ['zo', 'Open fold under cursor'],
      \ 'c' : ['zc', 'Close fold under cursor']
      \ }

let g:which_key_map['c']={
      \ 'name' : 'Local configs',
      \ 'c' : [':tabe ~/.config/nvim/init.vim', 'Edit init.vim'],
      \ 'r' : [':so ~/.config/nvim/init.vim', 'Reload nvim configs'],
      \ 't' : [':tabe ~/.tmux.conf', 'Edit .tmux.conf'],
      \ 'w' : [':tabe ~/.config/wezterm/wezterm.lua', 'Edit WezTerm conf'],
      \ 'n' : [':tabe ~/.npmrc', 'Edit .npmrc'],
      \ 'h' : [':tabe /etc/hosts', 'Edit hosts file']
      \ }

let g:which_key_map['d']={
      \ 'name' : 'Dev & whatnot',
      \ 'l' : [':!npx eslint % --fix', 'Lint current file'],
      \ 'c' : [':!git checkout %', 'Git checkout current file'],
      \ 'j' : [':!npx jest %', 'Jest test current file']
      \ }

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" the followijng breaks commentary
set timeoutlen=300

" tools
function! s:Camelize(range) abort
  if a:range == 0
    s#\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)#\u\1\2#g
  else
    s#\%V\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)\%V#\u\1\2#g
  endif
endfunction

function! s:Snakeize(range) abort
  if a:range == 0
    s#\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)#\l\1_\l\2#g
  else
    s#\%V\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)\%V#\l\1_\l\2#g
  endif
endfunction

command! -range CamelCase silent! call <SID>Camelize(<range>)
command! -range SnakeCase silent! call <SID>Snakeize(<range>)

" gitsigns
set signcolumn=no


let g:onedark_config = {
    \ 'style': 'dark',
\}
colorscheme onedark

" disable folding in telescope's result window
autocmd! FileType TelescopeResults setlocal nofoldenable

lua << EOF
require'neogit'.setup()
require'telescope'.setup({
    defaults = {
        file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/" },
    }
});

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    "vimdoc",
    "luadoc",
    "vim",
    "lua",
    "markdown",
    "bash",
    "javascript",
    "html",
    "json",
    "json5",
    "sql"
  }
}
require'gitsigns'.setup()
require'nvim-tree'.setup()

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = { {'filename', path = 3}},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})

require("oil").setup()
EOF

