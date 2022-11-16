require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    disable = {},
    -- additional_vim_regex_highlighting = true,
  },
  incremental_selection = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "bash",
    "css",
    "diff",
    "dockerfile",
    "gitignore",
    "graphql",
    "html",
    "http",
    "javascript",
    "json",
    "lua",
    "markdown",
    "prisma",
    "python",
    "regex",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
})
