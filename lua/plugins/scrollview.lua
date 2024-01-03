return {
  {
    "dstein64/nvim-scrollview",
    init = function()
      require("scrollview").setup({
        excluded_filetypes = { "neo-tree" },
        current_only = true,
        base = "right",
        column = 1,
        signs_on_startup = { "all" },
        diagnostics_severities = {
          vim.diagnostic.severity.ERROR,
          vim.diagnostic.severity.WARN,
          vim.diagnostic.severity.HINT,
          vim.diagnostic.severity.INFO,
        },
      })
    end,
  },
}
