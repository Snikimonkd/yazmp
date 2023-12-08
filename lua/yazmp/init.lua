local M = {}

function M.zenmode(c)
	if M.buf == nil then
		local cur_win = vim.fn.winnr("$")
		M.buf = vim.api.nvim_create_buf(false, false)

		vim.api.nvim_command("vsp")
		vim.api.nvim_command("wincmd H")
		pcall(vim.cmd, "buffer " .. M.buf)

		local width = 30
		if #c.fargs == 1 then
			width = tonumber(c.fargs[1])
		end
		vim.api.nvim_win_set_width(0, width)

		vim.cmd.wincmd("w")
	else
		vim.api.nvim_buf_delete(M.buf, { force = true })
		M.buf = nil
	end
end

return M
