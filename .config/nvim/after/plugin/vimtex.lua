config = function ()
    vim.g.vimtex_view_general_viewer = 'okular'
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_view_general_options = [["--unique file:@pdf\#src:@line@tex"]]
    vim.g.tex_comment_nospell = 1
end
