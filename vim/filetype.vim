
if exists("did_load_filetypes")
	finish
endif
	augroup filetypedetect
            au BufRead,BufNewFile *.ys          setfiletype yices
            au BufRead,BufNewFile *.fountain    setfiletype fountain   
            autocmd BufRead,BufNewFile *mutt-*  setfiletype mail
        augroup END


