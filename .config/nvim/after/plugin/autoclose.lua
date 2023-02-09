require("autoclose").setup({
   keys = {
      ["<"] = { escape = true, close = true, pair = "<>"},
      [">"] = { escape = false, close = false, pair = "<>"},
   },
   options = {
       disabled_filetypes = {"markdown"},
   },
})
