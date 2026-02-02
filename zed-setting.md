{
  "languages": {
    "Dart": {
      "hard_tabs": true,
      "tab_size": 4,
      "colorize_brackets": true
    }
  },
  "terminal": {
    "cursor_shape": "bar",
    "font_size": 17.0,
    "font_family": "Maple Mono NF",
    "copy_on_select": true,
    "default_height": 460,
    "scrollbar": null
  },
  "buffer_font_family": "Maple Mono NF",
  "icon_theme": "Warm Charmed Icons",
  "ui_font_size": 17.0,
  "buffer_line_height": {
    "custom": 2
  },
  "buffer_font_features": {
    "cv01": 7
  },
  "ui_font_family": "Maple Mono NF",
  "buffer_font_size": 17.0,
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "Aura Dark",
  },
  "theme_overrides": {
    "Aura Dark": {
      "editor.document_highlight.read_background": "#00000000",
      "editor.document_highlight.write_background": "#00000000",
      "border.variant": "#15141C",
      "border": "#15141C",
      "title_bar.background": "#15141C",
      "panel.background": "#15141C",
      "panel.focused_border": "#4E466E",
      "players": [
        {
          "cursor": "#BD9DFF",
        },
      ],
      "syntax": {
        "comment": {
          "font_style": "italic",
        },
        "comment.doc": {
          "font_style": "italic"
        },
        "function": {
          "font_style": "italic"
        },
        "function.call": {
          "font_style": "italic"
        },
        "variable": {
          "font_style": "italic"
        },
        "variable.parameter": {
          "font_style": "italic"
        },
        "variable.member": {
          "font_style": "italic"
        },
        "type": {
          "font_style": "italic"
        },
        "type.class": {
          "font_style": "italic"
        },
      },
    },
  },
  "title_bar": {
    "show_onboarding_banner": false,
    "show_project_items": false,
    "show_branch_name": false,
    "show_user_menu": false,
  },
  "tab_bar": {
    "show": false,
  },
  "toolbar": {
    "quick_actions": false,
    "breadcrumbs": true,
    "agent_review": false,
  },
  "status_bar": {
    "experimental.show": true,
  },
  "gutter": {
    "min_line_number_digits": 0,
    "folds": false,
    "runnables": false
  },
  "indent_guides": {
    "enabled": false
  },
  "project_panel": {
    "dock": "right",
    "default_width": 300,
    "hide_root": true,
    "auto_fold_dirs": false,
    "starts_open": false,
    "git_status": false,
    "sticky_scroll": false,
    "scrollbar": {
      "show": "never",
    },
    "indent_guides": {
      "show": "never",
    },
  },
  "outline_panel": {
    "default_width": 300,
    "indent_guides": {
      "show": "never",
    },
  },
  "file_finder": {
    "modal_max_width": "large",
    "file_icons": true,
  },
  "scrollbar": {
    "show": "never",
  },
  "minimap": {
    "show": "never",
  },
  "agent_buffer_font_size": 17,
  "cursor_blink": false,
  "cursor_shape": "bar",
  "multi_cursor_modifier": "alt",
  "selection_highlight": false,
  "current_line_highlight": "none",
  "drag_and_drop_selection": {
    "enabled": false
  },
  "seed_search_query_from_cursor": "never",
  "show_whitespaces": "none",
  "tab_size": 2,
  "auto_indent_on_paste": false,
  "format_on_save": "off",
  "autosave": {
    "after_delay": {
      "milliseconds": 1000,
    }
  },
  "formatter": "language_server",
  "show_completions_on_input": true,
  "show_completion_documentation": true,
  "inline_code_actions": false,
  // "lsp_document_colors": "border",
  "lsp": {
    "dart": {
      "binary": {
        "path": "C:/flutter/bin/dart.bat",
        "arguments": [
          "language-server",
          "--protocol=lsp"
        ]
      },
      "initialization_options": {
        "closingLabels": true,
        "outline": true,
        "flutterOutline": true
      }
    },
    "rust-analyzer": {
      "initialization_options": {
        "check": {
          "command": "clippy",
        },
      },
    },
  },
}
