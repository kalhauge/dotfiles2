set tabstop=4
set expandtab
set shiftwidth=4

nnoremap <leader>c :PymodeLint<cr>
nnoremap <leader>im :silent call Init_method()<cr><cr>

function! Init_method()
    execute "normal!" . ':s/\v(\s*)def\s+__init__\s*\(\s*self,\s*(.*)\):' .
\ '/\=submatch(0) . "\r"' .
\ ' . join(Init_args(submatch(2), submatch(1) . "    "), "\r")/' . "\<cr>"
endfunction

function! Init_args(arg, indent)
    let args = split(join(split(a:arg), ""), ",")
    let inits = []
    for arg in args
        call add(inits, a:indent . "self." . arg . " = " . arg )
    endfor
    return inits
endfunction

