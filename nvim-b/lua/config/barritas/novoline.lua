-- Novoline config for lualine
-- Author: shadmansaleh and Kedap
local lualine = require("lualine")
local utils = require("utils")

  -- Color table for highlights
  -- stylua: ignore
  local colors = {
  bg       = '#002B64',
  fg       = '#bbc2cf',
  yellow   = '#f6c57e',
  cyan     = '#55b5c1',
  darkblue = '#0C5E70',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#fc626a',
  cafe      = '#D0AE19',
  }

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "",
    section_separators = "",

    theme = {
      ---- We are going to use lualine_c an lualine_x as left and
      ---- right section. Both are highlighted by c theme .  So we
      ---- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  extensions = { "nvim-tree", "toggleterm", "fugitive", "quickfix", "nvim-dap-ui" },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  function()
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  -- mode component
  --function()
  ----return "󰃛"
  --return ""
  --end,

  function()
    -- auto change icon according to neovims mode
    local mode_icon = {
      n = "󰃛",
      i = "",
      v = "󰇀",
      [""] = "󰆿",
      V = "󰇀",
      c = "",
      no = "",
      s = "󰝷",
      S = "󰝷",
      [""] = "󰝷",
      ic = colors.yellow,
      R = "",
      Rv = "",
      cv = "",
      ce = "",
      r = "",
      rm = "",
      ["r?"] = "",
      ["!"] = "",
      t = "",
    }
    return mode_icon[vim.fn.mode()]
  end,

  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [""] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [""] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ["r?"] = colors.cyan,
      ["!"] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
})

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return "▊"
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  -- filetype component
  "filetype",
  colored = true,
  cond = conditions.buffer_not_empty,
})

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  -- filesize component
  "filesize",
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta }, -- Sets highlighting of component
})

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  "location",
  color = { fg = colors.orange }, -- Sets highlighting of component
})

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({ "progress", color = { fg = colors.cafe, gui = "bold" } })

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
    color_hint = { fg = "#FFFFFF" },
  },
})

ins_left({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function()
    return "%="
  end,
})

-- ins_left({
--   -- Lsp server name .
--   function()
--     local msg = "No Active Lsp"
--     local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
--     local clients = vim.lsp.get_active_clients()
--     if next(clients) == nil then
--       return msg
--     end
--     for _, client in ipairs(clients) do
--       local filetypes = client.config.filetypes
--       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
--         return client.name
--       end
--     end
--     return msg
--   end,
--   icon = " LSP:",
--   color = { fg = "#ffffff", gui = "bold" },
-- })

ins_left({
  "filetype",
  cond = conditions.buffer_not_empty,
  icon_only = true,
})

ins_left({
  "filename",
  cond = conditions.buffer_not_empty,
  symbols = {
    modified = " ●", -- Text to show when the file is modified.
    readonly = " 󰞚", -- Text to show when the file is non-modifiable or readonly.
    unnamed = "", -- Text to show for unnamed buffers.
  },
  color = { fg = "#ffffff", gui = "bold" },
})

ins_right({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_right({
  "diff",
  -- Is it me or the symbol for modified us really weird
  symbols = { added = " ", modified = " ", removed = " " },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
})

ins_right({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_right({
  utils.get_lsp_client_name(),
  icon = " ",
  color = { fg = "#ffffff" },
})

ins_right({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

-- Add components to right sections
ins_right({
  "o:encoding", -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.darkblue, gui = "bold" },
})

ins_right({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = "bold" },
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = "bold" },
})

ins_right({
  function()
    -- section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    return ""
  end,
  color = { fg = colors.blue }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
})

ins_right({
  "branch",
  icon = "",
  color = { fg = colors.violet, gui = "bold" },
})

ins_right({
  function()
    return ""
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
})

lualine.setup(config)
