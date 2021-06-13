let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" Plug 'ashisha/image.vim'
Plug 'vlime/vlime', {'rtp': 'vim/'}
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-plug'
Plug 'junegunn/fzf.vim'
Plug 'neovim/node-client'
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'dense-analysis/ale'
Plug 'google/yapf'
Plug 'ehamberg/vim-cute-python'
Plug 'tpope/vim-markdown'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-python'
Plug 'neoclide/coc-css'
Plug 'neoclide/coc-git'
Plug 'neoclide/coc-highlight'
Plug 'neoclide/coc-html'
Plug 'neoclide/coc-java'
Plug 'neoclide/coc-pairs'
Plug 'neoclide/coc-rls'
Plug 'neoclide/coc-smartf'
Plug 'neoclide/coc-sources'
Plug 'neoclide/vim-easygit'
Plug 'neoclide/coc-r-lsp'
Plug 'jpalardy/vim-slime'
Plug 'kovisoft/slimv'
Plug 'hylang/vim-hy'
"Plug 'davidhalter/jedi-vim'
" Plug 'liuchengxu/vim-which-key'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/Haskell-Conceal'
"lmintmate plugin list follows

" Declare the list of plugins.
" dependency of vim-textobj-entire
" Plug 'kana/vim-textobj-user'
" provides the text object ae for the entire buffer, ie for the entire buffer except leading and trailing empty lines
" Plug 'kana/vim-textobj-entire'
" simple plugin to view list of recently opened files.
" Plug 'lmintmate/MRU'

" disables search highlighting when you are done searching and re-enables it when you search again
" Plug 'romainl/vim-cool'

" Autocomplete system for the cmdline
" Plug 'paradigm/SkyBison'

" Makes the yanked region apparent
" Plug 'machakann/vim-highlightedyank'

" Plug 'kshenoy/vim-signature'

" Plug 'itchyny/vim-highlighturl'

" Plug 'lmintmate/ShowMotion'

" Plug 'jszakmeister/vim-togglecursor'

" Plug 'sunaku/vim-modusline'

" Plug 'masukomi/vim-markdown-folding', { 'for': 'markdown' }

" Plug 'pbrisbin/vim-rename-file'

" Plug 'amadeus/vim-convert-color-to'

Plug 'mattn/lisper-vim'

" Plug 'itchyny/vim-gitbranch'

" Plug 'niklaas/lightline-gitdiff'

" Plug 'axvr/org.vim'

" Plug 'lacygoill/vim-freekeys'

" Plug 'cocopon/inspecthi.vim'

" Plug 'zplugin/zplugin-vim-syntax'

call plug#end()
colorscheme onedark
set title
set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd
" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin indent on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>
" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

"
" markdown-preview configs (by iamcco)
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
	let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
	let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
	let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
	let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
	let g:mkdp_filetypes = ['markdown']
" Conceal support for hy - chu
	let g:hy_enable_conceal = 1
" Fancy conceal for hy - chu
	let g:hy_conceal_fancy = 1
" Slimey vim
	let g:slime_target = "neovim"
" Swank slimv
	let g:slimv_swank_cmd = '! st sbcl --load /usr/share/common-lisp/source/slime/start-swank.lisp &'
" Vim terminal bindings for split window
	map <leader>t :term zsh <CR>
	tmap <leader>t <c-w>:term <CR>
" Pylinting
	let g:neomake_python_pylint_maker = {
		\ 'args': [
		\ '-d', 'C0103, C0111, W0612',
		\ '-f', 'text',
		\ '--msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}"',
		\ '-r', 'n'
		\ ],
		\ 'errorformat':
		\ '%A%f:%l:%c:%t: %m,' .
		\ '%A%f:%l: %m,' .
		\ '%A%f:(%l): %m,' .
		\ '%-Z%p^%.%#,' .
		\ '%-G%.%#',
		\ }

	let g:neomake_python_enabled_makers = ['flake8', 'pylint']
" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    if has('nvim')
        let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
    else
        let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
    endif

" vimling:
	nm <leader><leader>d :call ToggleDeadKeys()<CR>
	imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader><leader>i :call ToggleIPA()<CR>
	imap <leader><leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader><leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Replace ex mode with gq
	map Q gq

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck -x %<CR>

" Open my bibliography file in split
	map <leader>b :vsp<space>$BIB<CR>
	map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Enable Goyo by default for mutt writing
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost bm-files,bm-dirs !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufRead,BufNewFile xresources,xdefaults set filetype=xdefaults
	autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
" Recompile dwmblocks on config edit.
	autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
    highlight! link DiffText MatchParen
endif

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>
" Source for config for Plug which-key
source $HOME/.config/nvim/keys/which-key.vim
