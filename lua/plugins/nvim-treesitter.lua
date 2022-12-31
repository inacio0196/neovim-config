--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

require('nvim-treesitter.configs').setup {
  -- A list of parser names, or 'all'
  ensure_installed = {'go', 'python', 'dockerfile', 'json', 'yaml', 'markdown', 'html', 'scss', 'css', 'vim', 'javascript', 'typescript', 'org'},

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = {'org'},
  },
  indent = {
    enable = true
  },
  -- autotag = {
  --   enable = true,
  --   --[[ filetypes = { "html", "xml", "php", "vue", "tsx", "jsx" }, ]]
  -- },
  context_commentstring = {
    enable = true,
    enable_autocmd = false
  },
  refactor = {
    highlight_definitions = {
      enable = true
    },
    highlight_current_scope = {
      enable = false
    }
  }
}
