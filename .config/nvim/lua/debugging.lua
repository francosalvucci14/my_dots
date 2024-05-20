local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
require('dap-python').setup(path)
require('dap-python').test_runner = 'pytest'
-- fetch the dap plugin
local dap = require('dap')
-- Setup DapUI
local dapui = require('dapui')
-- set it up see more configs in their repo
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
