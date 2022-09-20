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
  s = { "save file" },
  c = { "close file" },
  l = {
    name = "lsp",
    q = { "diagnostic" },
    m = { "rename" },
    a = { "code actions" },
    r = { "references" },
    f = { "formatting" },
    d = { "definition" },
    D = { "declaration" },
    n = { "next error" },
    p = { "previous error" },
  },
  f = { "file explorer" },
  ["/"] = { "comment" },
}, { prefix = "<leader>" })
