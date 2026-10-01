return {
  {
    "martindur/zdiff.nvim",
    cmd = { "Zdiff" },
    opts = {
      default_expanded = false,
      default_branch = "main",
      keymaps = {
        goto_file = "<CR>",
        toggle = "<Tab>",
        close = "q",
        refresh = "R",
        toggle_mode = "m",
        help = "?",
        yank_ref = "gy",
      },
      icons = {
        collapsed = "",
        expanded = "",
        added = "+",
        deleted = "-",
        modified = "~",
      },
      syntax = {
        mode = "projection",
        max_lines = 8000,
      },
    },
    keys = {
      { "<leader>gV", "<cmd>Zdiff<cr>", desc = "Zdiff (HEAD)" },
      { "<leader>gM", "<cmd>Zdiff main<cr>", desc = "Zdiff (main)" },
    },
  },
}
