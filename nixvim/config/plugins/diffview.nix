{
  plugins = {
    web-devicons.enable = true;

    diffview = {
      enable = true;

      settings = {
        option_panel = [
          {
            mode = "n";
            key = "<tab>";
            action = "actions.select_entry";
            description = "Change the current option";
          }
          {
            mode = "n";
            key = "q";
            action = "actions.close";
            description = "Close the panel";
          }
          {
            mode = "n";
            key = "g?";
            action = ''actions.help("option_panel")'';
            description = "Open the help panel";
          }
        ];
        keymaps = {
          view = [
            {
              mode = "n";
              key = "<tab>";
              action = "actions.select_next_entry";
              description = "Open the diff for the next file";
            }
            {
              mode = "n";
              key = "<s-tab>";
              action = "actions.select_prev_entry";
              description = "Open the diff for the previous file";
            }
            {
              mode = "n";
              key = "gf";
              action = "actions.goto_file";
              description = "Open the file in a new split in the previous tabpage";
            }
            {
              mode = "n";
              key = "<C-w><C-f>";
              action = "actions.goto_file_split";
              description = "Open the file in a new split";
            }
            {
              mode = "n";
              key = "<C-w>gf";
              action = "actions.goto_file_tab";
              description = "Open the file in a new tabpage";
            }
            {
              mode = "n";
              key = "<leader>e";
              action = "actions.focus_files";
              description = "Bring focus to the file panel";
            }
            {
              mode = "n";
              key = "<leader>b";
              action = "actions.toggle_files";
              description = "Toggle the file panel.";
            }
            {
              mode = "n";
              key = "g<C-x>";
              action = "actions.cycle_layout";
              description = "Cycle through available layouts.";
            }
            {
              mode = "n";
              key = "[x";
              action = "actions.prev_conflict";
              description = "In the merge-tool: jump to the previous conflict";
            }
            {
              mode = "n";
              key = "]x";
              action = "actions.next_conflict";
              description = "In the merge-tool: jump to the next conflict";
            }
            # Para acciones que son llamadas a funciones, se pasan como una cadena de texto Lua:
            {
              mode = "n";
              key = "<leader>co";
              action = ''actions.conflict_choose("ours")'';
              description = "Choose the OURS version of a conflict";
            }
            {
              mode = "n";
              key = "<leader>ct";
              action = ''actions.conflict_choose("theirs")'';
              description = "Choose the THEIRS version of a conflict";
            }
            {
              mode = "n";
              key = "<leader>cb";
              action = ''actions.conflict_choose("base")'';
              description = "Choose the BASE version of a conflict";
            }
            {
              mode = "n";
              key = "<leader>ca";
              action = ''actions.conflict_choose("all")'';
              description = "Choose all the versions of a conflict";
            }
            {
              mode = "n";
              key = "dx";
              action = ''actions.conflict_choose("none")'';
              description = "Delete the conflict region";
            }
          ];

          diff1 = [
            {
              mode = "n";
              key = "g?";
              action = ''actions.help({"view", "diff1"})'';
              description = "Open the help panel";
            }
          ];

          diff2 = [
            {
              mode = "n";
              key = "g?";
              action = ''actions.help({"view", "diff2"})'';
              description = "Open the help panel";
            }
          ];

          diff3 = [
            {
              mode = "n";
              key = "2do";
              action = ''actions.diffget("ours")'';
              description = "Obtain the diff hunk from the OURS version of the file";
            }
            {
              mode = "n";
              key = "3do";
              action = ''actions.diffget("theirs")'';
              description = "Obtain the diff hunk from the THEIRS version of the file";
            }
            {
              mode = "n";
              key = "g?";
              action = ''actions.help({"view", "diff3"})'';
              description = "Open the help panel";
            }
          ];

          diff4 = [
            {
              mode = "n";
              key = "1do";
              action = ''actions.diffget("base")'';
              description = "Obtain the diff hunk from the BASE version of the file";
            }
            {
              mode = "n";
              key = "2do";
              action = ''actions.diffget("ours")'';
              description = "Obtain the diff hunk from the OURS version of the file";
            }
            {
              mode = "n";
              key = "3do";
              action = ''actions.diffget("theirs")'';
              description = "Obtain the diff hunk from the THEIRS version of the file";
            }
            {
              mode = "n";
              key = "g?";
              action = ''actions.help({"view", "diff4"})'';
              description = "Open the help panel";
            }
          ];

          file_panel = [
            {
              mode = "n";
              key = "j";
              action = "actions.next_entry";
              description = "Bring the cursor to the next file entry";
            }
            {
              mode = "n";
              key = "<down>";
              action = "actions.next_entry";
              description = "Bring the cursor to the next file entry";
            }
            {
              mode = "n";
              key = "k";
              action = "actions.prev_entry";
              description = "Bring the cursor to the previous file entry.";
            }
            {
              mode = "n";
              key = "<up>";
              action = "actions.prev_entry";
              description = "Bring the cursor to the previous file entry.";
            }
            {
              mode = "n";
              key = "<cr>";
              action = "actions.select_entry";
              description = "Open the diff for the selected entry.";
            }
            {
              mode = "n";
              key = "o";
              action = "actions.select_entry";
              description = "Open the diff for the selected entry.";
            }
            {
              mode = "n";
              key = "<2-LeftMouse>";
              action = "actions.select_entry";
              description = "Open the diff for the selected entry.";
            }
            {
              mode = "n";
              key = "-";
              action = "actions.toggle_stage_entry";
              description = "Stage / unstage the selected entry.";
            }
            {
              mode = "n";
              key = "S";
              action = "actions.stage_all";
              description = "Stage all entries.";
            }
            {
              mode = "n";
              key = "U";
              action = "actions.unstage_all";
              description = "Unstage all entries.";
            }
            {
              mode = "n";
              key = "X";
              action = "actions.restore_entry";
              description = "Restore entry to the state on the left side.";
            }
            {
              mode = "n";
              key = "L";
              action = "actions.open_commit_log";
              description = "Open the commit log panel.";
            }
            {
              mode = "n";
              key = "<c-b>";
              action = ''actions.scroll_view(-0.25)'';
              description = "Scroll the view up";
            }
            {
              mode = "n";
              key = "<c-f>";
              action = ''actions.scroll_view(0.25)'';
              description = "Scroll the view down";
            }
            {
              mode = "n";
              key = "<tab>";
              action = "actions.select_next_entry";
              description = "Open the diff for the next file";
            }
            {
              mode = "n";
              key = "<s-tab>";
              action = "actions.select_prev_entry";
              description = "Open the diff for the previous file";
            }
            {
              mode = "n";
              key = "i";
              action = "actions.listing_style";
              description = "Toggle between 'list' and 'tree' views";
            }
            {
              mode = "n";
              key = "f";
              action = "actions.toggle_flatten_dirs";
              description = "Flatten empty subdirectories in tree listing style.";
            }
            {
              mode = "n";
              key = "R";
              action = "actions.refresh_files";
              description = "Update stats and entries in the file list.";
            }
            {
              mode = "n";
              key = "g?";
              action = ''actions.help("file_panel")'';
              description = "Open the help panel";
            }
          ];

          file_history_panel = [
            {
              mode = "n";
              key = "g!";
              action = "actions.options";
              description = "Open the option panel";
            }
            {
              mode = "n";
              key = "<C-A-d>";
              action = "actions.open_in_diffview";
              description = "Open the entry under the cursor in a diffview";
            }
            {
              mode = "n";
              key = "y";
              action = "actions.copy_hash";
              description = "Copy the commit hash of the entry under the cursor";
            }
            {
              mode = "n";
              key = "L";
              action = "actions.open_commit_log";
              description = "Show commit details";
            }
            {
              mode = "n";
              key = "zR";
              action = "actions.open_all_folds";
              description = "Expand all folds";
            }
            {
              mode = "n";
              key = "zM";
              action = "actions.close_all_folds";
              description = "Collapse all folds";
            }
            {
              mode = "n";
              key = "j";
              action = "actions.next_entry";
              description = "Bring the cursor to the next file entry";
            }
            {
              mode = "n";
              key = "<down>";
              action = "actions.next_entry";
              description = "Bring the cursor to the next file entry";
            }
            {
              mode = "n";
              key = "k";
              action = "actions.prev_entry";
              description = "Bring the cursor to the previous file entry.";
            }
            {
              mode = "n";
              key = "<up>";
              action = "actions.prev_entry";
              description = "Bring the cursor to the previous file entry.";
            }
            {
              mode = "n";
              key = "<cr>";
              action = "actions.select_entry";
              description = "Open the diff for the selected entry.";
            }
            {
              mode = "n";
              key = "g?";
              action = ''actions.help("file_history_panel")'';
              description = "Open the help panel";
            }
          ];

          help_panel = [
            {
              mode = "n";
              key = "q";
              action = "actions.close";
              description = "Close help menu";
            }
            {
              mode = "n";
              key = "<esc>";
              action = "actions.close";
              description = "Close help menu";
            }
          ];
        };
        file_history_panel = {
          log_options = {
            git = {
              singleFile = {diffMerges = "combined";};
              multiFile = {diffMerges = "first-parent";};
            };
            hg = {
              singleFile = {};
              multiFile = {};
            };
          };
          win_config = {
            position = "bottom";
            height = 16;
            win_opts = {};
          };
        };
        default_args = {
          diffviewFileHistory = [];
          diffviewOpen = [];
        };
        signs = {
          foldClosed = "";
          foldOpen = "";
          done = "✓";
        };
        view = {
          default = {layout = "diff2_horizontal";};
          mergeTool = {
            layout = "diff3_horizontal";
            disableDiagnostics = true;
          };
          fileHistory = {layout = "diff2_horizontal";};
        };
        file_panel = {
          listingStyle = "tree";
          treeOptions = {
            flattenDirs = true;
            folderStatuses = "only_folded";
          };
          win_config = {
            position = "left";
            width = 35;
            win_opts = {};
          };
        };
        icons = {
          folder_closed = "";
          folder_open = "";
        };
        diff_binaries = false;
        enhanced_diffHl = false;
        git_cmd = ["git"];
        use_icons = true;
        show_help_hints = true;
        watch_index = true;
        hooks = {};
      };
    };
  };
}
