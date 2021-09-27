if !exists('g:lspconfig')
    finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local prototype = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
EOF
