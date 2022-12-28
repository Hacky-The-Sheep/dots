-- Utilities for creating configurations
-- local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,

  -- All formatter configurations are opt-in
  filetype = {

    lua = {
      require("formatter.filetypes.lua").stylua,
    },

    python = {
        require("formatter.filetypes.python").black,
    },

    markdown = {
        require("formatter.filetypes.markdown").prettier,
    },

    html = {
        require("formatter.filetypes.html").prettier,
    },

    json = {
        require("formatter.filetypes.json").prettier,
    },

    css = {
        require("formatter.filetypes.css").prettier,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
