vim.api.nvim_create_user_command("Zenmode", function(c)
	require("yazmp").zenmode(c)
end, { nargs = "?" })
