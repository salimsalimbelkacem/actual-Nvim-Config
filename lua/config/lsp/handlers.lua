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
	    local lspconfig = require("lspconfig")

	    -- Function to find a local virtualenv or fallback to default
	    local function get_python_path(workspace)
		    -- Check for common virtualenv directories
		    local venv_paths = {
			    workspace .. "/.venv/bin/python",
			    workspace .. "/venv/bin/python",
			    workspace .. "/env/bin/python",
			    os.getenv("HOME") .. "/.venv/bin/python",
		    }

		    for _, path in ipairs(venv_paths) do
			    if vim.fn.executable(path) == 1 then
				    return path
			    end
		    end

		    -- Fallback to system Python
		    return vim.fn.exepath("python3") or "python3"
	    end

	    lspconfig.pyright.setup {
		    on_init = function(client)
			    local path = get_python_path(vim.fn.getcwd())
			    client.config.settings.python.pythonPath = path
		    end,

		    settings = {
			    python = {
				    analysis = {
					    autoSearchPaths = true,
					    useLibraryCodeForTypes = true,
				    },
			    },
		    },
	    }
    end
}
