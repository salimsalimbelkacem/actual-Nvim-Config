local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath
})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    change_detection = {notify = false},

	{
		'sho-87/kanagawa-paper.nvim',

		config = function ()
			require('kanagawa-paper').setup { dimInactive = false, transparent = true }
			vim.cmd.colorscheme ("kanagawa-paper")
		end
	},
    {
        "yorik1984/newpaper.nvim",
        priority = 1000,
        config = function ()
            require("newpaper").setup{
                style="dark",
            }
        end
    },
    {
        'maxmx03/solarized.nvim',
        lazy = false,
        priority = 1000,
        opts = {
            transparent = {
                enabled = false,
            }
        },
        config = function(_, opts)
            require('solarized').setup(opts)
        end,
    },
    {
        "nvim-neorg/neorg",
        lazy = false,
        version = "*",
        config = function ()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {},
                }
            })
        end
    },
    {
		'nvim-treesitter/nvim-treesitter',

		config = function ()
			require'nvim-treesitter.configs'.setup ( require("config.treesitter") )
		end
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },

        config = function ()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

            require('telescope').setup({})
        end
    },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },

		config = function()
			require('lualine').setup ( require('config.lualine') )
            -- dont believe him its not true
		end
	},
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function ()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown { }
                    }
                },
                ft = 'mason'
            }
            require("telescope").load_extension("ui-select")
        end
    },
    {
        'luukvbaal/statuscol.nvim',
        opts = function()
        local builtin = require('statuscol.builtin')
        return {
            setopt = true,
            segments = {
              { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
              { text = { '%s' }, click = 'v:lua.ScSa' },
              {
                  text = { builtin.lnumfunc, ' ' },
                  condition = { true, builtin.not_empty },
                  click = 'v:lua.ScLa',
              },
            },
          }
        end,
    },
    {
        "windwp/nvim-ts-autotag",

        config = function ()
            require'nvim-ts-autotag'.setup{
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false
                },
            }
        end,
    },
    {
        "altermo/ultimate-autopair.nvim",

        config = function ()
             require'ultimate-autopair'.setup{}
        end
    },

    {
        "j-hui/fidget.nvim",

        config = function()
            require("fidget").setup{}
        end
    },

    -- LSP, diagnostics and completion :(
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup {
                handlers = require("config.lsp.handlers"),
            }

        end
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim"
        },

        config = function ()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    -- null_ls.builtins.diagnostics.eslint,
                    -- null_ls.builtins.formatting.eslint,
                    -- null_ls.builtins.code_actions.eslint,
                },
            })
        end
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",

            "hrsh7th/cmp-buffer", "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },

        config = function ()
            require("luasnip.loaders.from_vscode").lazy_load()
            require('cmp').setup(require("config.lsp.cmp"))
        end
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        lazy = true,
        keys = require("config.trouble"),
        config = true
    },
}
