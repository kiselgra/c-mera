" force plugin-order
call vlime#plugin#Setup()

syntax enable
set nolisp
set ts=8

if exists('g:CmeraPluginLoaded')
	finish
endif
let g:CmeraPluginLoaded = 1

if !exists('g:CmeraPluginVerbose')
	let g:CmeraPluginVerbose = 0
endif

if !exists('g:vlime_indent_keywords')
	if !exists('g:vlime_default_indent_keywords')
		echoerr "Cmera-Plugin requires Vlime"
		finish
	endif
	let g:vlime_indent_keywords = g:vlime_default_indent_keywords
endif

function! Cmera_read_indent_file(file)
	if g:CmeraPluginVerbose
		echo "Reading indent from " . a:file
	endif
	" generate a list of extensions for vlime_indent_keywords
	let cat_and_remove_comments = 'cat "'.a:file.'" | sed -e "s/;.*//"'
	" let build_indent_map        = 'sed -e "s/[^(]*(\(\S\+\)\s\+\([0-9]\+\)).*/let g:vlime_indent_keywords.\1 = \2/"'
	let build_indent_map        = 'sed -e "s/[^(]*(\(\S\+\)\s\+\([0-9]\+\)).*/let g:vlime_indent_keywords[\"\1\"] = \2/"'
	let limit_to_indent_map     = 'grep vlime_indent_keywords'
	let indent_forms = split(system(cat_and_remove_comments.' | '.build_indent_map.' | '.limit_to_indent_map), '\n')
	if g:CmeraPluginVerbose > 1
		for stmt in indent_forms
			echo " - ".stmt
		endfor
	endif
	" apply it
	for stmt in indent_forms
		execute(stmt)
	endfor
	" get a list of keywords to highlight
	let remove_linebreaks    = "tr -d '\n'"
	let empty_if_no_keywords = "grep ':keywords'"
	let keywords_only        = 'sed -e "s/.*:keywords\s\+(\([^)]\+\))/\1/"'
	let collapse_ws          = 'sed -e "s/\s\+/ /g"'
	let keywords = split(system(cat_and_remove_comments.' | '.remove_linebreaks.' | '.empty_if_no_keywords.' | '.keywords_only.' | '.collapse_ws), ' ')
	let kw_list = ""
	" build a list of keywords for autocommand and register it"
	if g:CmeraPluginVerbose > 1
		for keyword in keywords
			echo " + ".keyword
		endfor
	endif
	for keyword in keywords
		let kw_list = kw_list . " " . keyword
	endfor
	if kw_list != ""
		execute("syn keyword lispFunc" . kw_list)
	endif
endfunction

function! Cmera_find_indent_file(...)
	let dir = (a:0 >= 1) ? a:1 : getcwd()
	let file = dir . "/cm.indent"
	if filereadable(file)
		if g:CmeraPluginVerbose
			echo "There is a CM indent file: " . file
		endif
		call Cmera_read_indent_file(file)
	else
		if g:CmeraPluginVerbose
			echo "There is NO CM indent file in " . dir
		endif
	endif
	if dir != "/"
		call Cmera_find_indent_file(fnamemodify(dir, ':h:p'))
	endif
endfunction

function! Cmera_load_files()
	if exists('g:cmera_base_indent_file')
		if filereadable(g:cmera_base_indent_file)
			call Cmera_read_indent_file(g:cmera_base_indent_file)
		else
			echoerr "Cannot open c-mera base indent file: " . g:cmera_base_indent_file
		endif
	else
		if g:CmeraPluginVerbose
			echo "No base indent file specified"
		endif
	endif
	call Cmera_find_indent_file()
endfunction

call Cmera_load_files()

au BufEnter *.lisp call Cmera_load_files()
