set nocp
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=syntax
set foldlevelstart=10
syntax on
colorscheme corporation_modified
set t_Co=256
set cc=72,79
set encoding=utf-8 fileencodings=
let @a=':s/;/\r{\r  \r}\r'
highlight RedHl ctermbg=red
match RedHL /\(\(\s\+)\|(\s\+\)\|\s\+,\|,[^ ]\+\|\s\+$\|sizeof(\|if(\|for(\|while(\|return(\|return (\|switch(\|\s\+;\)/

set makeprg=pre=;for\ i\ in\ $(seq\ 1\ 4);do\ if\ [\ -f\ \"${pre}Makefile\"\ ];then\ if\ [\ $i\ -eq\ 1\ ];then\ make;else\ make\ -C\ $pre;break;fi;else\ pre=../$pre;fi;done

au Bufread TODO set syntax=markdown
au Bufread Makefile setlocal noexpandtab

map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
