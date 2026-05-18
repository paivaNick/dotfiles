return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		vim.keymap.set("n", "<Leader>d", function()
			dap.toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>D", function()
			dap.set_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "127.0.0.1",
			port = "${port}",
			executable = {
				command = "node",
				args = {
					-- NOTE that we don't need to hardcode the path, but can instead use the location from the Mason-installed version via `:MasonInstall js-debug-adapter`
					vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					-- NOTE that there's an issue with nvim-dap calling this if you DO NOT specify a port and the host as `127.0.0.1`
					"${port}",
					"127.0.0.1",
				},
			},
		}

		for _, language in ipairs({ "typescript", "javascript" }) do
			dap.configurations[language] = {
				-- at a minimum, it's nice to be able to interactively pick the process
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
				-- ...
			}
		end
	end,
}
