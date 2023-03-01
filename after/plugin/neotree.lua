local ok, neotree = pcall(require, "neo-tree")
if not ok then
	return
end

neotree.setup({
	close_if_last_window = true,
	popup_border_style = "single",
	enable_git_status = false,
	enable_diagnostics = false,
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	},
	default_component_configs = {
		indent = {
			indent_size = 2,
			padding = 1,
			with_markers = true,
			indent_marker = "│",
			last_indent_marker = "└",
			highlight = "NeoTreeIndentMarker",
			with_expanders = nil,
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
		icon = {
			folder_closed = " ",
			folder_open = " ",
			folder_empty = " ",
			default = " ",
			highlight = "Directory",
		},
		modified = {
			symbol = "●",
			highlight = "DiffChange",
		},
		name = {
			trailing_slash = false,
			highlight = "Normal",
		},
	},
	window = {
		position = "right",
		width = 30,
		mappings = {
			["o"] = "toggle_node",
		},
	},
	source_selector = {
		winbar = false,
		statusline = false,
	},
})
