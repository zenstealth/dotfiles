"-----------------------------------------------------------------------------------
" Visuals
"-----------------------------------------------------------------------------------

"Eyecandy
syntax on
colorscheme ekvoli
set guifont=Droid_Sans_Mono:h12 "Set the font and size
set linespace=3 "Larger linespacing for increased readability
set number "Numbers on the left hand side
set title "Set the Terminal title
set foldenable "Fold sections of code
set splitbelow
set splitright
set hlsearch
set nowrap

"Smart Indents
set tabstop=3
set shiftwidth=3
set smartindent
set autoindent

"-----------------------------------------------------------------------------------
" Usability
"-----------------------------------------------------------------------------------

"Removes Vim Startup Message
set shm=aTItoO

"Autocompletion
set wildmode=list:longest

"Enables Mouse Input
set mouse=a

"Disable the beeping
set noerrorbells

if has("gui_running")
    set guioptions=egmrt
endif

"-----------------------------------------------------------------------------------
" Shortcuts
"-----------------------------------------------------------------------------------

"Directories
abbrev desk :cd ~/Desktop<cr>:e.<cr>
abbrev down :cd ~/Downloads<cr>:e.<cr>

abbrev ff :! open -a Aurora.app %:p<cr>
abbrev vimrc :tabedit $MYVIMRC<cr>
abbrev nt :NERDTreeToggle
