local util = require "formatter.util"

return {
  require("formatter.filetypes.lua").luaformatter,
  function()
    -- if util.get_current_buffer_file_name() == "special.lua" then
    --  return nil
    -- end

    -- Full specification of configurations is down below and in Vim help
    -- files
    return {
      exe = "stylua",
      args = {
        "--search-parent-directories",
        "--stdin-filepath",
        util.escape_path(util.get_current_buffer_file_path()),
        "--",
        "-",
      },
      stdin = true,
    }
  end
}
