local lsp_installer = require 'nvim-lsp-installer'


local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

local opts = { noremap=true, silent=true }

buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)        --> jumps to the definition
buf_set_keymap('n', '<leader>ln', ':lua vim.lsp.buf.hover()<CR>', opts)
buf_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
buf_set_keymap('n', '<leader>rn', ':lua vim.lsp.util.rename()<CR>', opts)
buf_set_keymap('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', opts)
buf_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
buf_set_keymap('n', '<leader>ld', ':lua vim.diagnostic.open_float()<CR>', opts)
buf_set_keymap('n', '[d', ':lua vim.diagnostic.goto_prev()<CR>', opts)
buf_set_keymap('n', ']d', ':lua vim.diagnostic.goto_next()<CR>', opts)
buf_set_keymap('n', '<leader>lq', ':lua vim.diagnostic.setloclist()<CR>', opts)
buf_set_keymap('n', '<leader>lf', ':lua vim.lsp.buf.formatting()<CR>', opts)

end



local servers = {
    "bashls",
    "pyright",
    "tsserver",
    "emmet_ls",
    "sumneko_lua",
    "clangd"
}

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end

lsp_installer.on_server_ready(function(server)
    --Specify the default options which we'll use to setup all servers
    local default_opts = {
        on_attach = on_attach,
    }
    server:setup(default_opts)
end)
