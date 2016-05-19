let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \   'readonly': '%{&readonly?"":""}',
    \ },
    \ 'component_function': {
    \   'filename': 'LightLineFilename'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }
function! LightLineFilename()
    return expand('%')
endfunction
