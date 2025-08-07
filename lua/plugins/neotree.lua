return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", 
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
        { '<leader>e', '<cmd>Neotree toggle<CR>', { desc = "Toggle Neo-tree [E]xplorer" } }
    },
    opts = {
        window = {
            width = 25,
            mappings = {
                ["l"] = "open",
                ["h"] = "close_node",
            }
        }
    },
  }
}
