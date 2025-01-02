" Title:        Mypy Plugin
" Description:  A plugin to automate the excution of Mypy without leaving vim.
" Last Change:  2 Jan 2025
" Maintainer:   Example User <https://github.com/Abdelkader-lahmar>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_mypy")
    finish
endif
let g:loaded_mypy = 1

" Exposes the plugin's functions for use as commands in Vim.
command! Mypy call ExecuteMypy()
