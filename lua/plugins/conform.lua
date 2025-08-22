return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        php_cs_fixer = {
          args = {
            "fix",
            "--config=" .. vim.fn.getcwd() .. "/.php-cs-fixer.php",
            "$FILENAME",
          },
          cwd = require("conform.util").root_file({ ".php-cs-fixer.php" }),
          require_cwd = true,
        },
        golangci_gci = {
          inherit = false,
          command = "golangci-lint",
          args = { "fmt", "--stdin", "--enable", "gci" },
          stdin = true,
          cwd = require("conform.util").root_file({ "go.mod" }),
          require_cwd = true,
        },
        phpcbf = {
          cwd = require("conform.util").root_file({ "phpcs.xml" }),
          require_cwd = true,
        },
      },
      formatters_by_ft = {
        php = { "php_cs_fixer", "phpcbf" },
        go = { "gofmt", "goimports", "golangci_gci" },
      },
      default_format_opts = {
        lsp_format = "never",
      },
    },
  },
}
