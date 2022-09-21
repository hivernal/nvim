require("which-key").setup {}
local wk = require("which-key")
wk.register({
  w = {
    name = "window",
    w = { "next window" },
    h = { "next right window" },
    j = { "next down window" },
    k = { "next up window" },
    l = { "next left window" },
    n = { "new horiziontal window" },
    v = { "new vertical window" },
    o = { "close other windows" },
    c = { "close window" },
  },
  s = { "save buffers" },
  c = { "close buffer" },
  q = { "quit nvim" },
  l = {
    name = "lsp",
    q = { "diagnostic" },
    n = { "rename" },
    a = { "code actions" },
    r = { "references" },
    f = { "formatting" },
    d = { "definition" },
    D = { "declaration" },
    j = { "next error" },
    k = { "previous error" },
  },
  e = { "file explorer" },
  ["/"] = { "comment" },
}, { prefix = "<leader>" })
