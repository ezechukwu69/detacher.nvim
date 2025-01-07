local M = {}

local setup = function()
	vim.api.nvim_create_user_command("Detach", function()
		-- get the current channel that the --remote-ui is connected to
		local uis = vim.api.nvim_list_uis()
		if #uis == 0 then
			vim.notify("No UIs available", vim.log.levels.ERROR)
			return
		else
			local ui = uis[1]
			vim.api.nvim_chanclose(ui)
		end
	end, {
		desc = "Detach from the current Neovim instance",
		nargs = 0,
	})
end

M.setup = setup

return M
