local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')
npairs.setup({
  check_ts = true,
  fast_wrap = {
    map = "<M-e>",
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%)%>%]%)%}%,]]=],
    end_key = '$',
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "Search",
    highlight_grey = "Comment"
  },
})

local ts_conds = require("nvim-autopairs.ts-conds")
npairs.add_rules({
  Rule("( ", " )")
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match(".%)") ~= nil
      end)
      :use_key(')'),
  Rule("{ ", " }")
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match(".%}") ~= nil
      end)
      :use_key('}'),
  Rule("[ ", " ]")
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match(".%]") ~= nil
      end)
      :use_key(']')

})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on(
  "confirm_done",
  cmp_autopairs.on_confirm_done()
)
