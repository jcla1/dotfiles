set background=dark
set autoindent
set number
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2
set statusline=%F%m%r\ CHR=%03.3b/%02.2B\ POS=%04l/%04v
colorscheme ron
syntax on

" Abbreviations
:iabbr hthtml <html><cr></html><esc>O<tab>
:iabbr hthead <head><cr></head><esc>O<tab>
:iabbr htbody <body><cr></body><esc>O<tab>
:iabbr htscript <script><cr></script><esc>O<tab>

" Taken from Peepcode 044 (jQuery Ajax)
:imap f<tab> function() {};
:imap F<tab> function (args) {<cr>}<esc>O<tab>
:imap :f<tab> method_name: function(attribute) {<cr><cr>},

" Abbreviations : HTML
:imap hhdiv<tab> <div id=""><cr></div><esc>k$hha
:imap hhul<tab> <ul class=""><cr></ul><esc>k$hha
