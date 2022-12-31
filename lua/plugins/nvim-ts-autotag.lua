require('nvim-ts-autotag').setup()
-- require('nvim-ts-autotag').setup({
--   filetypes = {
--     'html',
--     'javascript',
--     'typescript',
--     'javascriptreact',
--     'typescriptreact',
--     'svelte',
--     'vue',
--     'tsx',
--     'jsx',
--     'rescript',
--     'xml',
--     'php',
--     'markdown',
--     'glimmer',
--     'handlebars',
--     'hbs'
--   }
-- })

vim.cmd([[
  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
]])
