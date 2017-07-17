" Vim syntax file
" Language: ergelo todo format
" Maintainer: Bruno Panara
" Latest Revision: 5 November 2013

if exists("b:current_syntax")
  finish
endif

"Regions
"syn region deadline start="<" end=">" fold transparent contains=deadlineIndicatior

"Keywords
syn keyword deadlineIndicator today tomorrow thisWeek nextWeek 

"Matches 
syn match completedTask "^\s*+.*$"
syn match deadline "^<.*>"
syn match today "<today>"
syn match tomorrow "<tomorrow>"
syn match hashtag "#\w\+"
syn match header "^\(##.\+##\)$"

let b:current_syntax = "todo"

hi link completedTask 	Comment
hi def deadline guifg=#859900
hi def tomorrow guifg=#b58900
hi def today guifg=#dc322f
hi def hashtag guifg=#2aa198
hi def header guibg=#6c71c4 guifg=#fdf6e3
