whitespace.vim
==============

Trims trailing white space on save

Configuration
=============

Enable / disable whitespace.vim. Set to 1 to enable (default), 0 to disable.
```viml
let g:whitespace = 1
```

Set the filetypes to not run whitespace.vim on. Defaults to an empty list.
```viml
let g:whitespace_ignore = ['vim']
```
