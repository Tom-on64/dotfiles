local opt = vim.opt

opt.laststatus = 2
opt.statusline = ""

opt.statusline:append("%m ")		-- Modified flag
opt.statusline:append("%.20f ")		-- Filename (limit to 20 chars)
opt.statusline:append("%y")		-- Filetype
opt.statusline:append("%=")		-- Separator to right-aligned section
opt.statusline:append("%#Status2#")	-- Highlight group
opt.statusline:append(" %b 0x%B ")	-- ASCII char decimal and hex
opt.statusline:append(" | ")		-- Separator
opt.statusline:append("%l:%c")		-- Line and column

