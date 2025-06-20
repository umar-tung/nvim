return {
    {
	"mason-org/mason-lspconfig.nvim",
	opts = function ()
	    local capabilities = require("blink.cmp").get_lsp_capabilities()

	    return {
		ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
		handlers = {
		    function(server_name)

			require("lspconfig")[server_name].setup({ capabilities = capabilities })

		    end,
		}
	    }
	    end,
	    dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	    },
	}
    }
