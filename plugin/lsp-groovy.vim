if isdirectory(g:vim_lsp_groovy.groovy_language_server.repository)
  au User lsp_setup call lsp#register_server({
    \ 'name': 'vim_lsp_groovy.groovy_language_server',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, expand('~/.vim/bundle/vim-lsp-groovy/groovy-language-server').' '.g:vim_lsp_groovy.groovy_language_server.repository]},
    \ 'whitelist': ['groovy'],
    \ })
else
  echohl ErrorMsg
  echom 'Sorry, `groovy-language-server` is not installed. See `:help vim-lsp-groovy` for more details on setup.'
  echohl NONE
endif
