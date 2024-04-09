local M = {}

local function neoconf(config)
  pcall(function()
    require("neoconf.plugins").register({
      on_schema = function(schema)
        schema:import("graphedit-lua", config.defaults)
      end,
    })
  end)
end

---@param opts? GrapheditLuaOptions
function M.setup(opts)
  local config = require("graphedit-lua.config")
  config.setup(opts)

  neoconf(config)
end

return M
