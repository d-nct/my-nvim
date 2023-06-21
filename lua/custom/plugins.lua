local plugins = {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        build = ":Copilot auth",
        opts = {
            suggestion = { enabled = false },
            panel = { enabled = false },
        },
    },
    {
      "ray-x/lsp_signature.nvim",
    },
    -- In order to modify the `lspconfig` configuration:
    {
      "neovim/nvim-lspconfig",
       config = function()
          require "plugins.configs.lspconfig"
          -- require "custom.configs.lspconfig"
       end,
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        version = "*"
    },
}
return plugins
