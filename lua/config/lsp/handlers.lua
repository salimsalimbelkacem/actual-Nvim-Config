return {
    function(server_name)
        require("lspconfig")[server_name].setup { }
    end,
    ["clangd"] = function()
        require("lspconfig").clangd.setup({
            cmd = {"clangd"}
        })
    end,
    ["pyright"] = function()
        require'lspconfig'.pyright.setup{
            cmd = { "pyright-langserver", "--stdio" },
            filetypes = { "python" },
            settings = {
                python = {
                    pythonfile = "/home/salim/.venv/bin/python3",
                    analysis = {
                        extraPaths = {
                            "/home/salim/.venv/lib/python3.13/site-packages/",
                            "/home/salim/.venv/lib/python3.12/site-packages/",
                    }
                    }
                }
            }
        }
    end,
}
