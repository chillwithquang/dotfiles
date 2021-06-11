" Light Line

function! DrawGitBranchInfo()
  let branch = fugitive#head()
  return len(branch) > 0 ? " " . branch : ""
endfunction

function! LightLineFilename()
  let name = ""
  let subs = split(expand('%'), "/")
  let i = 1
  for s in subs
    let parent = name
    if  i == len(subs)
      let name = len(parent) > 0 ? parent . '/' . s : s
    elseif i == 1
      let name = s
    else
      let part = strpart(s, 0, 10)
      let name = len(parent) > 0 ? parent . '/' . part : part
    endif
    let i += 1
  endfor
  return name
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : '') : ''
  " return ''
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_warnings = l:counts.total - l:all_errors

  let l:errors_recap = l:all_errors == 0 ? '' : printf('%d✖ ', all_errors)
  let l:warnings_recap = l:all_warnings == 0 ? '' : printf('%d ', all_warnings)
  return (errors_recap . warnings_recap)
endfunction

" set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline = {
      \ 'colorscheme': 'bluewery',
      \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             ['readonly', 'fileicon','filename','cocstatus','modified'],
        \             ['linterstatus']],
        \   'right': [ [ 'lineinfo', 'percent'],
        \              ['method','icongitbranch']],
        \ },
        \'inactive': {
          \   'left': [ ['fileicon'], ['filename'] ],
          \   'right': [['icongitbranch']]
          \ },
          \ 'separator': { 'left': '', 'right': '' },
          \ 'subseparator': { 'left': '', 'right': '' },
          \ 'component_function': {
            \   'cocstatus': 'coc#status',
            \   'icongitbranch': 'DrawGitBranchInfo',
            \   'filename': 'LightLineFilename',
            \   'method': 'NearestMethodOrFunction',
            \   'fileicon': 'MyFiletype',
            \   'linterstatus': 'LinterStatus',
            \ },
            \ }
