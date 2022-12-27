:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set relativenumber
call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" indent/unindent with tab/shift-tab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

" sane editing
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set viminfo='25,\"50,n~/.viminfo
set tw=79
set autoindent
set smartindent
set guifont=Hack_Nerd_Font_Mono:h07

" enable 256 colors
set t_Co=256
set t_ut=

if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    let g:neovide_transparency=0.8
    let g:neovide_cursor_vfx_mode = "sonicboom"
    let g:neovide_cursor_trail_size = 0.8
endif


lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfly',
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
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
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
  extensions = {},
}
require('toggleterm').setup {
    open_mapping = [[<c-\>]],
}
END
