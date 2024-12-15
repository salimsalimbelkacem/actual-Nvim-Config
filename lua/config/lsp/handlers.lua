return {
    function(server_name)
        require("lspconfig")[server_name].setup {
            capabilities = capabilities
        }
    end,

    ["lua_ls"] = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
                Lua = {
    runtime = { version = "Lua 5.1" },
                diagnostics = {
                        globals = { "vim", "it", "describe", "before_each", "after_each" },
                    }
                }
            }
        }
    end,
    ["clangd"] = function()
        require("lspconfig").clangd.setup({
            capabilities = capabilities,
            cmd = {"clangd"}
        })
    end,
    ["pyright"] = function()
        require'lspconfig'.pyright.setup{
            cmd = { "pyright-langserver", "--stdio" },
            filetypes = { "python" },
            settings = {
                python = {
                    pythonfile = "/home/salim/.venv/bin/python",
                    analysis = {
                        extraPaths = { "/home/salim/.venv/lib/python3.12/site-packages" }
                    }
                }
            }
        }
    end,
}
