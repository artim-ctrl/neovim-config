return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "fredrikaverpil/neotest-golang", version = "*" },
  },
  opts = function()
    return {
      adapters = {
        require("neotest-golang")(),
      },
      icons = {
        passed = "✅",
        failed = "❌",
        running = "⏳",
        skipped = "➡️",
        unknown = "❓",
      },
    }
  end,
}
