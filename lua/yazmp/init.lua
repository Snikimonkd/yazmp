local M = {}

function create_window(width, direction)
	vim.api.nvim_command("vsp")
	vim.api.nvim_command("wincmd " .. direction)
	pcall(vim.cmd, "buffer " .. M.buf)
	vim.api.nvim_win_set_width(0, width)
	vim.wo.winfixwidth = true
	vim.wo.cursorline = false
	vim.o.numberwidth = 1
	vim.wo.rnu = false
	vim.wo.nu = false
end

function M.zenmode(c)
	if M.buf == nil then
		M.buf = vim.api.nvim_create_buf(false, false)

		local width = 30
		if #c.fargs == 1 then
			width = tonumber(c.fargs[1])
		end

		local cur_win = vim.fn.win_getid()

		create_window(width, "H")
		create_window(width, "L")

		vim.api.nvim_set_current_win(cur_win)
	else
		vim.api.nvim_buf_delete(M.buf, { force = true })
		M.buf = nil
	end
end

return M
