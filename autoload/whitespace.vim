fun! whitespace#default(name, default)
    if !exists(a:name)
        let {a:name} = a:default
        return 0
    endif
    return 1
endfunction

fun! whitespace#trim() "{{{
    if g:whitespace != 1
        return
    endif

    if index(g:whitespace_ignore, &ft) > -1
        return
    endif

    let cursor_pos = getpos('.')
    silent! %s/\s\+$//
    call setpos('.', cursor_pos)
endfunction "}}}

au BufWritePre <buffer> call whitespace#trim()
