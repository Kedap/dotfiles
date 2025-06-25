{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        layout_config = {
          width = 0.75;
          preview_cutoff = 120;
          horizontal = {mirror = true;};
          vertical = {mirror = true;};
        };
        find_command = [
          "rg"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
        ];
        prompt_prefix = "🔍 ";
        selection_caret = " ";
        entry_prefix = "  ";
        initial_mode = "insert";
        selection_strategy = "reset";
        sorting_strategy = "descending";
        layout_strategy = "horizontal";
        file_sorter = {__raw = "require('telescope.sorters').get_fuzzy_file";};
        file_ignore_patterns = [];
        generic_sorter = {__raw = "require('telescope.sorters').get_generic_fuzzy_sorter";};
        path_display = {};
        winblend = 0;
        border = {};
        borderchars = ["─" "│" "─" "│" "╭" "╮" "╯" "╰"];
        color_devicons = true;
        use_less = true;
        set_env = {COLORTERM = "truecolor";};
        file_previewer = {__raw = "require('telescope.previewers').vim_buffer_cat.new";};
        grep_previewer = {__raw = "require('telescope.previewers').vim_buffer_vimgrep.new";};
        qflist_previewer = {__raw = "require('telescope.previewers').vim_buffer_qflist.new";};
        buffer_previewer_maker = {__raw = "require('telescope.previewers').buffer_previewer_maker";};
        mappings = {
          i = {
            "<C-j>" = {__raw = "require('telescope.actions').move_selection_next";};
            "<C-k>" = {__raw = "require('telescope.actions').move_selection_previous";};
            "<C-q>" = {__raw = "require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist";};
            "<esc>" = {__raw = "require('telescope.actions').close";};
            "<CR>" = {__raw = "require('telescope.actions').select_default + require('telescope.actions').center";};
          };
          n = {
            "<C-j>" = {__raw = "require('telescope.actions').move_selection_next";};
            "<C-k>" = {__raw = "require('telescope.actions').move_selection_previous";};
            "<C-q>" = {__raw = "require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist";};
          };
        };
      };
    };
  };
}
