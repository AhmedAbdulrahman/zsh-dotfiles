"Move highlighted lines"
xnoremap <silent> K :call ahmed#mappings#visual#movelines#moveup()<CR>
xnoremap <silent> J :call ahmed#mappings#visual#movelines#movedown()<CR>

"Jump 5 lines/character UP|DOWN|RIGHT|LEFT"
xnoremap <C-j> 5j
xnoremap <C-k> 5k
xnoremap <C-h> 5h
xnoremap <C-l> 5l

" Stay in visual mode when indenting."
xnoremap < <gv
xnoremap > >gv

" Always search with 'very magic' mode."
xnoremap / /\v
xnoremap ? ?\v

" Execute a macro over visual selection."
xnoremap <silent> @ :<C-u>execute printf("'<,'>normal! @%s", nr2char(getchar()))<CR>

"easy regex replace for current word"
xnoremap <leader>r :<c-u>%s/\%V

"save using <C-s> and back to normal mode"
vnoremap <C-s> <C-c>:write<Cr>

"Pressing * or # on Visual mode, and make current visual selection active search text."
xnoremap * :<C-u>call ahmed#autocmds#visual#setsearch#('/')<CR>/<C-r>=@/<CR><CR>
xnoremap \# :<C-u>call ahmed#autocmds#visual#setsearch#('?')<CR>?<C-r>=@/<CR><CR>

" Slugify word under cursor "
vnoremap <silent> <Plug>SlugifyVisual c<C-R>=ahmed#mappings#normal#slugify#(getreg('"'))<CR> :silent! call repeat#set("\<Plug>SlugifyVisual")<CR>
vmap <silent> <leader>s <Plug>SlugifyVisual
