local dap = require("dap")

if not dap.adapters["pwa-node"] then
  vim.fn.sign_define('DapBreakpoint', { text = ' ', texthl = '', linehl = '', numhl = '' })

  require("dap").adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
      command = "node",
      -- 💀 Make sure to update this path to point to your installation
      args = {
        require("mason-registry").get_package("js-debug-adapter"):get_install_path()
        .. "/js-debug/src/dapDebugServer.js",
        "${port}",
      },
    },
  }
end
for _, language in ipairs({ "typescript", "javascript" }) do
  if not dap.configurations[language] then
    dap.configurations[language] = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch lambda ts-node",
        program = "${file}",
        cwd = "${workspaceFolder}",
        runtimeArgs = {
          "-r", "ts-node/register"
        },
      },
      {
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        -- processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
      },
    }
  end
end
