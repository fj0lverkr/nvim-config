return {
  {
    "jedrzejboczar/possession.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
    init = function()
      local function session_name()
        return require("possession.session").session_name or ""
      end
      require("possession").setup({
        commands = {
          save = "SSave",
          load = "SLoad",
          delete = "SDelete",
          list = "SList",
        },
        plugins = { delete_hidden_buffers = false },
      })
      require("telescope").load_extension("possession")
      require("lualine").setup({
        sections = { lualine_b = { session_name } },
      })
    end,
  },
}
