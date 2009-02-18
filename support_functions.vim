"ruby {{{1
function! Snippet_RubyClassNameFromFilename()
    let name = expand("%:t:r")
    return NS_camelcase(name)
endfunction

function! Snippet_MigrationNameFromFilename()
    let name = substitute(expand("%:t:r"), '^.\{-}_', '', '')
    return NS_camelcase(name)
endfunction


"python {{{1
function! Snippet_PythonClassNameFromFilename()
    let name = expand("%:t:r")
    return NS_camelcase(name)
endfunction

"php {{{1
function! Snippet_PHPClassNameFromFilename()
    return expand("%:t:r:r")
endfunction

"java {{{1
function! Snippet_JavaClassNameFromFilename()
    return expand("%:t:r")
endfunction

function! Snippet_JavaInstanceVarType(name)
    let oldview = winsaveview()
    if searchdecl(a:name) == 0
        normal! B
        let old_reg = @"
        normal! yaW
        let type = @"
        let @" = old_reg
        call winrestview(oldview)
        let type = substitute(type, '\s\+$', '', '')

        "searchdecl treats  'return foo;' as a declaration of foo
        if type != 'return'
            return type
        endif
    endif
    return "<+type+>"
endfunction


"global {{{1
function! s:start_comment()
    return substitute(&commentstring, '^\([^ ]*\)\s*%s\(.*\)$', '\1', '')
endfunction

function! s:end_comment()
    return substitute(&commentstring, '^.*%s\(.*\)$', '\1', '')
endfunction

function! Snippet_Modeline()
    return s:start_comment() . " vim: set <+settings+>:" . s:end_comment()
endfunction



" modeline {{{1
" vim: set fdm=marker:
