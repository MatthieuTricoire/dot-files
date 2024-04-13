return {
  {
    "stevearc/oil.nvim",
    opts = {
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = "˙",
        right = "¬",
        down = "∆",
        up = "˚",

        -- Move current line in Normal mode
        line_left = "˙",
        line_right = "¬",
        line_down = "∆",
        line_up = "˚",
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
