if exists("g:prefixr_curl_proxy_addr") && exists("g:prefixr_curl_proxy_user")
  let s:curlopts = "--proxy " . g:prefixr_curl_proxy_addr . "--proxy-user" . g:prefixr_curl_proxy_user
else
  let s:curlopts = ""
endif

fun! s:Prefixr(b,e)
  silent! exe 'normal ' . 'gv"ay'
  let s:sel = @a
  let s:sel = substitute(s:sel, expand("\n"), "", "g")
  let s:sel = escape(s:sel, "{}[]()")
  let s:cmd = 'curl -sSd' . ' css="' . s:sel . '" ' . s:curlopts . '"http://prefixr.com/api/index.php"'
  let output = system(s:cmd)
  let output = substitute(output, "\\", "", "g")
  let @o = output
  normal gv"op
endfun

au FileType css com! -range Prefixr call s:Prefixr(<line1>, <line2>)
