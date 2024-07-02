" ----- Settings
set nu " show line number
set completeopt=menu,menuone,noselect

"" Indent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"" Appearance
set termguicolors
set background=dark
colorscheme kanagawa-dragon "aura, deepwhite, decay, sunbather, candle-gray, nightcity(-kabuki, -afterlife), boo, tokyodark, mellow, vitesse, kanagawa(-wave, -dragon, -lotus), everforest, nordic, gruvbox(-material), catppuccin(-latte, -frappe, -macchiato, -mocha)
" remove ~ chars
lua vim.opt.fillchars:append { eob = " " }

"" Terminal
let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';'
let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
let &shellpipe  = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
set shellquote= shellxquote=

" ----- Key bindings
"" Set the <leader> key
let mapleader = "\<Space>"

"" Toggle file manager
nnoremap <silent><C-n> <Cmd>Neotree toggle<CR>

"" Save current file
nnoremap <silent><C-s> <Cmd>write<CR>
nnoremap <silent><C-s>f <Cmd>write!<CR>
"" Save without formatting
nnoremap <silent><C-s>w <Cmd>noa w<CR>

"" Save file as
nnoremap <C-s>a :w<space>

"" Find files
nnoremap <silent><leader>ff <Cmd>Telescope find_files<CR>

"" Find string
nnoremap <silent><leader>fs <Cmd>Telescope live_grep<CR>

"" Choose colorscheme
nnoremap <silent><leader>th <Cmd>Telescope colorscheme<CR>

"" Toggle transparency
nnoremap <silent><S-y> <Cmd>TransparentToggle<CR>

"" Open a new buffer
nnoremap <silent><C-t> <Cmd>enew<CR>

"" Close current buffer
nnoremap <silent><S-w> <Cmd>lua require('bufdelete').bufdelete(0, false)<CR>

"" Move between buffers
nnoremap <silent><tab> <Cmd>BufferLineCycleNext<CR>
nnoremap <silent><S-tab> <Cmd>BufferLineCyclePrev<CR>

"" Move to a specific buffer
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>

"" Toggle terminal
nnoremap <silent><leader>tt <Cmd>ToggleTerm<CR>

"" Open new terminal
nnoremap <silent><leader><S-t> <Cmd>ToggleTerm<CR>

"" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

"" Open new window
nnoremap <silent><leader>t <Cmd>new<CR>

"" Move between windows
nnoremap <silent><leader>w <Cmd>lua require('nvim-window').pick()<CR>
nnoremap <C-h> <Cmd>wincmd h<CR>
nnoremap <C-l> <Cmd>wincmd l<CR>
nnoremap <C-j> <Cmd>wincmd j<CR>
nnoremap <C-k> <Cmd>wincmd k<CR>

"" Move windows
nnoremap <C-M-H> <Cmd>WinShift left<CR>
nnoremap <C-M-J> <Cmd>WinShift down<CR>
nnoremap <C-M-K> <Cmd>WinShift up<CR>
nnoremap <C-M-L> <Cmd>WinShift right<CR>

" Swap two windows
nnoremap <C-W>X <Cmd>WinShift swap<CR>

" Resize windows
nnoremap <C-M-w> <Cmd>:resize +1<CR>
nnoremap <C-M-s> <Cmd>:resize -1<CR>
nnoremap <C-M-d> <Cmd>:vertical resize +1<CR>
nnoremap <C-M-a> <Cmd>:vertical resize -1<CR>

"" Replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

"" 'Reassign' visual block
nnoremap <M-v> <C-v>

"" Enable format on save
" nnoremap <leader>ef <Cmd>FormatEnable<CR>

"" Disable format on save
" nnoremap <leader>df <Cmd>FormatDisable<CR>

"" Prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
nnoremap <leader>cp <Cmd>CocCommand prettier.createConfigFile<CR>

" ----- Plugins
lua require('plugins')
