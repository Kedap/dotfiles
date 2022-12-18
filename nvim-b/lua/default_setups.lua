require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
require("toggleterm").setup {}
require("nvim-web-devicons").setup {}
require("nvim_comment").setup {}
require("gitsigns").setup()
require("image").setup()
require("autolist").setup()
require("git-conflict").setup {
  default_mappings = false, -- disable buffer local mapping created by this plugin
  disable_diagnostics = true, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = "DiffText",
    current = "DiffAdd",
  },
}
require"fidget".setup{}
