return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute(
          { toggle = true, dir = require("utils").get_root() }
        )
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>ce",
      function()
        require("neo-tree.command").execute(
          { toggle = true, dir = vim.loop.cwd() }
        )
      end,
      desc = "Explorer NeoTree",
    },
  },
}
