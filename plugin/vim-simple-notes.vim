if exists("g:loaded_vim_simple_notes")
  finish
endif
let g:loaded_vim_simple_notes = 1

autocmd BufRead *.scratch setl bufhidden=unload autowrite nobuflisted

func! Notes()
    exec ':e ~/scratch/' . strftime("%Y-%U") . '.scratch<CR>'
endfunc

func! NotesOpen()
    :vimgrep /\[[^x]\]/j ~/scratch/*<CR>
endfunc
