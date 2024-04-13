return {
  {
    "ptdewey/yankbank-nvim",
    config = function()
      require("yankbank").setup({

        keys = {
          {
            vim.keymap.set("n", "<leader>y", ":YankBank<CR>", { noremap = true }),
          },
        },
      })
    end,
  },
}
