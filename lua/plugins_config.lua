require "nvim-tree".setup {
    view = {
        height = 27,
        hide_root_folder = true
    }
}

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
    highlight LineNr guifg= white
]]

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript","tsx","javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,
  },
incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      -- node_incremental = "grn",
      -- scope_incremental = "grc",
      -- node_decremental = "grm",
    },
  },
}


vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

--
require('gitsigns').setup{
signcolumn = auto,
on_attach = function()
vim.wo.signcolumn = "yes"
end
}


