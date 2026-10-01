return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "swift" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {},
      },
    },
  },
  {
    "mason.nvim",
    opts = {
      ensure_installed = { "swiftformat" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nu = { "nufmt" },
        swift = { "swiftformat", "swift_format", stop_after_first = true },
      },
    },
  },
}
