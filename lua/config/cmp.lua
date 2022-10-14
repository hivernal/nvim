local icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "ﰠ",
	Variable = "",
	Class = "ﴯ",
	Interface = "",
	Module = "",
	Property = "ﰠ",
	Unit = "塞",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "פּ",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

local cmp = require 'cmp'

local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
require("luasnip.loaders.from_vscode").lazy_load()
local luasnip = require("luasnip")

local lspkind = require('lspkind')

cmp.setup {

	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end
	},

	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			preset = 'codicons',
			symbol_map = icons,
		})
	},

	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},

	mapping = {
		["<M-Space>"] = cmp.mapping.complete(),
		["<M-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false },
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				-- elseif has_words_before() then
				--   cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		-- ["<M-j>"] = cmp.mapping(function(fallback)
		-- 	if luasnip.expand_or_jumpable() then
		-- 		luasnip.expand_or_jump()
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		-- ["<M-k>"] = cmp.mapping(function(fallback)
		-- 	-- if cmp.visible() then
		-- 	-- 	cmp.select_prev_item()
		-- 	if luasnip.jumpable(-1) then
		-- 		luasnip.jump(-1)
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { "i", "s" }),
	},

	sources = {
		{ name = 'nvim_lsp' },
		{ name = "luasnip" },
		{ name = "nvim_lsp_signature_help" },
		{ name = 'buffer' },
		{ name = 'path' },
	}
}
