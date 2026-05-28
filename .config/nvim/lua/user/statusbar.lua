local opt = vim.opt

opt.laststatus = 2

local status_str = ""
status_str = status_str .. "%m "	-- Modified flag
status_str = status_str .. "%.32f "	-- Filename (limit to 32 chars)
status_str = status_str .. "%y"		-- Filetype
status_str = status_str .. "%="		-- Separator to right-aligned section
status_str = status_str .. "%#Status2#"	-- Highlight group
status_str = status_str .. " %b 0x%B "	-- ASCII char decimal and hex
status_str = status_str .. " | "	-- Separator
status_str = status_str .. "%l:%c"	-- Line and column

opt.statusline = status_str

