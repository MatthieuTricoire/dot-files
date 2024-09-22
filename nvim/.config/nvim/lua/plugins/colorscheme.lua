local colors = {
  blue = "#89B4FA", -- Bleu de Catppuccin Mocha
  green = "#A6E3A1", -- Vert de Catppuccin Mocha
  hint = "#F5E0DC", -- Hint (Rose pâle) dans Catppuccin Mocha
  red = "#F38BA8", -- Rouge de Catppuccin Mocha
  teal = "#94E2D5", -- Teal (Bleu-vert) de Catppuccin Mocha
  yellow = "#F9E2AF", -- Jaune de Catppuccin Mocha
}

---@diagnostic disable-next-line: redefined-local
local custom_highlights = function(colors)
  return {
    LineNr = { fg = colors.hint },
    CursorLineNr = { fg = colors.green },

    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.teal },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

    SpellBad = { sp = colors.red, undercurl = true },
    SpellCap = { sp = colors.yellow, undercurl = true },
    SpellLocal = { sp = colors.teal, undercurl = true },
    SpellRare = { sp = colors.hint, undercurl = true },
  }
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      cmp = true,
      flavour = "mocha",
      transparent_background = true,
      custom_highlights = custom_highlights(colors),
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
