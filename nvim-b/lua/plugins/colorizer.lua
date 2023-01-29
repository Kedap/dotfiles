return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({ "*" }, {
      css = true,
      css_fn = true,
      hsl_fn = true,
      names = false,
      rgb_fn = true,
    })
  end,
}
