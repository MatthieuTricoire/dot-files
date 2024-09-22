return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      vim.diagnostic.config({
        update_in_insert = true,
        float = { border = "rounded" },
      }),
    },
  },
}
