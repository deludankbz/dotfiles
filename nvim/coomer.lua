local M = {}

-- UI
M.base_30 = {
  white = "#d3af86",
  black = "#221a0f", -- usually your theme bg
  darker_black = "#1c150c", -- 6% darker than black
  black2 = "#2a1f11", -- 6% lighter than black
  one_bg = "#332617", -- 10% lighter than black
  one_bg2 = "#3d2f1e", -- 6% lighter than one_bg
  one_bg3 = "#473725", -- 6% lighter than one_bg2
  grey = "#75674d", -- 40% lighter than black (estimated)
  grey_fg = "#8b7e62", -- 10% lighter than grey
  grey_fg2 = "#9e9174", -- 5% lighter than grey_fg
  light_grey = "#afa388",
  red = "#c87e5a",
  baby_pink = "#d38b6a",
  pink = "#c792ea",
  line = "#2f2315", -- 15% lighter than black
  green = "#879a6b",
  vibrant_green = "#98ad7d",
  nord_blue = "#5d90cd",
  blue = "#5d90cd",
  seablue = "#6bbab2",
  yellow = "#e4b581", -- 8% lighter than yellow (same as normal yellow)
  sun = "#f2cca8",
  purple = "#c792ea",
  dark_purple = "#b37bd9",
  teal = "#6bbab2",
  orange = "#e4b581",
  cyan = "#6bbab2",
  statusline_bg = "#2a1f11",
  lightbg = "#3d2f1e",
  pmenu_bg = "#879a6b",
  folder_bg = "#5d90cd"
}

-- base16 color scheme
M.base_16 = {
  base00 = "#221a0f", -- black (background)
  base01 = "#2a1f11", -- lighter black
  base02 = "#3d2f1e", -- one_bg2
  base03 = "#473725", -- one_bg3
  base04 = "#8b7e62", -- grey_fg
  base05 = "#d3af86", -- white (foreground)
  base06 = "#e4b581", -- yellow
  base07 = "#f2cca8", -- bright white
  base08 = "#c87e5a", -- red
  base09 = "#e4b581", -- orange
  base0A = "#e4b581", -- yellow
  base0B = "#879a6b", -- green
  base0C = "#6bbab2", -- cyan
  base0D = "#5d90cd", -- blue
  base0E = "#c792ea", -- magenta
  base0F = "#7d6f48"  -- bright black
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
M.polish_hl = {
  defaults = {
    Comment = {
      bg = M.base_30.black, -- or M.base_30.cyan
      italic = true,
    },
  },

  treesitter = {
    ["@variable"] = { fg = M.base_30.white },
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- or "light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "coomer")

return M
