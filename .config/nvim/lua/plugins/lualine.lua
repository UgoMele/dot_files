return {
  {
    "nvim-lualine/lualine.nvim",
    dependecies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup{
        options = { theme = "ayu_light" },
      }
    end
  },
}
