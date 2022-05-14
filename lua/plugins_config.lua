require "nvim-tree".setup {
    view = {
        height = 27,
        hide_root_folder = true
    }
}
require("gitsigns").setup()
require("nvim-autopairs").setup {}
require("nvim_comment").setup()

vim.g[ 'coc_global_extensions' ]= { 'coc-css','coc-html','coc-emmet','coc-html-css-support','coc-tsserver','coc-vetur','coc-phpls','coc-prettier' }

vim.cmd[[ command! -nargs=0 Prettier :CocCommand prettier.formatFile]]

function VerificandoCoc()

local st= vim.fn.exists(':CocInfo')

if st == 2 then
    vim.cmd('so ~/AppData/Local/nvim/Config/coc-config.vim') --Ajustes para Coc
    print('Todo Ok')
else
    print('Ejecuta :PlugInstall para finalizar la configuracion')
end

end

local cl= vim.cmd('au VimEnter * lua VerificandoCoc()')
-- print(cl)
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
