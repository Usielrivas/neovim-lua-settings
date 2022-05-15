require "nvim-tree".setup {
    view = {
        height = 27,
        hide_root_folder = true
    }
}
require("gitsigns").setup{
signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}
require("nvim-autopairs").setup {}
require("nvim_comment").setup()

--
vim.cmd[[
let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "/",
    \ 'git': {
    \   'unstaged': "xS",
    \   'staged': "S",
    \   'unmerged': "x=",
    \   'renamed': "R",
    \   'untracked': "?",
    \   'deleted': "X",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "v",
    \   'arrow_closed': "+",
    \   'default': "+",
    \   'open': "v",
    \   'empty': "+[]",
    \   'empty_open': "v[]",
    \   'symlink': "+[/]",
    \   'symlink_open': "v[/]",
    \   }
    \ }
]]



