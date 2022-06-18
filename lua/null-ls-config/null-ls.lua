local null_ls = require('null-ls')

local formatting = null_ls.builtins.formattings

local sources = {
    formatting.eslint_d,
    formatting.autopep8,
    formatting.stylua,
    formatting.djhtml,
    formatting.djlint,
    formatting.clang_format,

}

null_ls.setup({
    sources = sources
})
