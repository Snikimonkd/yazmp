local M = {}
print("zenmode loaded")

function M.zenmode(c)
	local buf = vim.api.nvim_create_buf(false, false)

	vim.api.nvim_command("vsp")
	vim.api.nvim_command("wincmd H")
	pcall(vim.cmd, "buffer " .. buf)

	local width = 30
	if #c.fargs == 1 then
		width = tonumber(c.fargs[1])
	end

	vim.api.nvim_win_set_width(0, width)
end

return M
