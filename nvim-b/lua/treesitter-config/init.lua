require("nvim-treesitter.configs").setup({
	-- One of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = { "html", "javascript", "lua", "comment", "ruby", "tsx", "yaml", "typescript", "bash", "dart" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = { enable = true },
})
