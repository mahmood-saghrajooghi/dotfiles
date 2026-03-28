return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {},
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript-tools").setup({
            on_attach = opts.on_attach,
            capabilities = opts.capabilities,
            handlers = opts.handlers,
            settings = {
              separate_diagnostic_server = true,
              publish_diagnostic_on = "insert_leave",
            },
          })
          return true
        end,
        ts_ls = function()
          return true
        end,
        vtsls = function()
          return true
        end,
      },
    },
  },
}
