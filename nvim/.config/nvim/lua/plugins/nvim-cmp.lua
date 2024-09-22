vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#b14e75" })
return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.window = {
        completion = cmp.config.window.bordered({
          border = "single",
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuThumb,Search:None",
        }),
        documentation = cmp.config.window.bordered({
          border = "single",
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
        }),
      }
    end,
  },
}
