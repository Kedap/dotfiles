return {
  "samodostal/image.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "m00qek/baleia.nvim",
  },
  opts = {
  render = {
    min_padding = 5,
    show_label = true,
    use_dither = true,
    foreground_color = true,
    background_color = true
  },
  events = {
    update_on_nvim_resize = true,
  },
},
  event = "BufRead",
}
