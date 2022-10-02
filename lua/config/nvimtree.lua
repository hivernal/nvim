require("nvim-tree").setup {
  view = {
    adaptive_size = true,
    hide_root_folder = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}
